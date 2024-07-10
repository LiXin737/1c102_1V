#include "esp8266.h"
#include "Config.h"
#include "ls1x_string.h"
#include "ls1x_printf.h"
#include "ls1x_latimer.h"

#include "queue.h"

uint8_t Read_Buffer[DATA_LEN];//设置接收缓冲数组
uint8_t Read_length;
/*
    在进行esp8266试验过程中prinf对应于上位机发送
                           myprintf2(0,#fmt,..)用于发送
*/

// ESP8266 发送命令后，检测接收到的应答
// str：期待的应答结果
// 返回值：0，没有得到期待的应答结果；其他，期待应答结果的位置(str的位置)
char* esp8266_check_cmd(char *str)//
{
    char *strx = NULL;

    if(Queue_isEmpty(&Circular_queue)==0)//判断队列是否为空，即判断是否收到数据
    {
        Read_length=Queue_HadUse(&Circular_queue);//返回队列中数据的长度
        {
            memset(Read_Buffer, 0, DATA_LEN);//填充接收缓冲区为0
            Queue_Read(&Circular_queue, Read_Buffer,Read_length);//读取队列缓冲区的值到接收缓冲区
            Read_Buffer[Read_length]='\0';//字符串接收结束符
            printf("check UART0_RX_BUF:%s\r\n", Read_Buffer);// 打印正确
        }

    }

    strx = pstrstr((const char*)Read_Buffer, (const char*)str);
    return strx;
}

// 向 ESP8266 发送命令
// cmd：发送的命令字符串。
// ack：期待的应答结果，如果为空，则表示不需要等待应答
// waittime：等待时间
// 返回值：0，发送成功(得到了期待的应答结果)；1，发送失败
char esp8266_send_cmd(char *cmd, char *ack, uint16_t waittime)
{
    char res = 0;
    //UART0_RX_STA = 0;
    printf("cmd:%s\r\n", cmd);
   
    myprintf2(0,"%s\r\n", cmd);	//发送命令
    if(ack && waittime)		//需要等待应答
    {
         //printf("check UART0_RX_BUF:%s\r\n", Read_Buffer);// 打印正确
        while(--waittime)	//等待倒计时
        {

            delay_ms(1000);
            //printf("等待倒计时\r\n");

            if(esp8266_check_cmd(ack))
            {
                printf("ack:%s\r\n", ack);
                break;//得到有效数据
            }

        }
        if(waittime == 0)
        {
            res = 1;
        }
        else printf("res:%d\r\n", res);
    }
    return res;
}

// ESP8266 模块进入透传模式
void esp8266_init(void)
{
    // 设置工作模式 1：station模式   2：AP模式   3：兼容 AP+station模式
    printf("AT+CWMODE=1\r\n");
    while(esp8266_send_cmd("AT+CWMODE=1", "OK", 150));

    delay_ms(500);
    // 让 WIFI 模块重启
    printf("AT+RST\r\n");
    while(esp8266_send_cmd("AT+RST", "OK", 400));
    // 让模块连接上自己的手机热点
    printf("AT+CWJAP=x10,12345678\r\n");
    while(esp8266_send_cmd("AT+CWJAP=\"x10\",\"12345678\"","OK", 300));
    // =0：单路连接模式；=1：多路连接模式
    printf("AT+CIPMUX=0\r\n");
    while(esp8266_send_cmd("AT+CIPMUX=0","OK",150));
    // 建立TCP连接  这三项分别代表：连接类型、远程服务器IP地址、远程服务器端口号
    printf("AT+CIPSTART=TCP,172.20.10.3,8080\r\n");
    while(esp8266_send_cmd("AT+CIPSTART=\"TCP\",\"172.20.10.3\",8080","OK",300));
    
    // 是否开启透传模式，=0：表示关闭透传；=1：表示开启透传
    printf("AT+CIPMODE=1\r\n");
    esp8266_send_cmd("AT+CIPMODE=1", "OK", 150);

    // 透传模式下开始发送数据的指令，这个指令之后就可以直接发数据了
    printf("AT+CIPSEND\r\n");
    esp8266_send_cmd("AT+CIPSEND", "OK", 150);
}

// 向 ESP8266 发送数据
// cmd：发送的命令字符串
// waittime：等待时间
// 返回值：发送数据后，服务器的返回验证码
void esp8266_send_data(char *cmd)
{
    myprintf2(0,"%s",cmd);// 发送数据
}







