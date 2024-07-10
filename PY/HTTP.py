from flask import Flask, request, jsonify, render_template
import sqlite3

app = Flask(__name__)

# 初始化数据库
def init_db():
    conn = sqlite3.connect('data.db')
    c = conn.cursor()
    c.execute('''CREATE TABLE IF NOT EXISTS sensor_data
                 (id INTEGER PRIMARY KEY AUTOINCREMENT, 
                  temperature REAL, 
                  humidity REAL,
                  light_intensity REAL,
                  soil_moisture REAL,
                  alarm INTEGER,
                  presence INTEGER,
                  fan_state INTEGER)''')
    conn.commit()
    conn.close()

# 接收数据
@app.route('/data', methods=['POST'])
def receive_data():
    data = request.json
    temperature = data['temperature']
    humidity = data['humidity']
    light_intensity = data['light_intensity']
    soil_moisture = data['soil_moisture']
    alarm = data['alarm']
    presence = data['presence']
    fan_state = data['fan_state']
    
    conn = sqlite3.connect('data.db')
    c = conn.cursor()
    c.execute("""INSERT INTO sensor_data 
                 (temperature, humidity, light_intensity, soil_moisture, alarm, presence, fan_state) 
                 VALUES (?, ?, ?, ?, ?, ?, ?)""", 
              (temperature, humidity, light_intensity, soil_moisture, alarm, presence, fan_state))
    conn.commit()
    conn.close()
    
    return jsonify({"status": "success"}), 200

# 显示数据
@app.route('/')
def index():
    conn = sqlite3.connect('data.db')
    c = conn.cursor()
    c.execute("SELECT temperature, humidity, light_intensity, soil_moisture, alarm, presence, fan_state FROM sensor_data")
    data = c.fetchall()
    conn.close()
    
    return render_template('index.html', data=data)

# 获取最新数据
@app.route('/latest', methods=['GET'])
def latest_data():
    conn = sqlite3.connect('data.db')
    c = conn.cursor()
    c.execute("SELECT temperature, humidity, light_intensity, soil_moisture, alarm, presence, fan_state FROM sensor_data ORDER BY ROWID DESC LIMIT 1")
    latest = c.fetchone()
    conn.close()

    if latest:
        return jsonify({"temperature": latest[0], 
                        "humidity": latest[1],
                        "light_intensity": latest[2],
                        "soil_moisture": latest[3],
                        "alarm": latest[4],
                        "presence": latest[5],
                        "fan_state": latest[6]})
    else:
        return jsonify({"temperature": None, 
                        "humidity": None,
                        "light_intensity": None,
                        "soil_moisture": None,
                        "alarm": None,
                        "presence": None,
                        "fan_state": None})

# 控制风扇状态
@app.route('/fan', methods=['POST'])
def control_fan():
    data = request.json
    fan_state = data['fan_state']
    
    conn = sqlite3.connect('data.db')
    c = conn.cursor()
    c.execute("UPDATE sensor_data SET fan_state = ? WHERE ROWID = (SELECT MAX(ROWID) FROM sensor_data)", (fan_state,))
    conn.commit()
    conn.close()
    
    return jsonify({"status": "success"}), 200

if __name__ == '__main__':
    init_db()
    app.run(host='0.0.0.0', port=5000)
