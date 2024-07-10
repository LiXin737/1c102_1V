#ifndef __ESP8266_H
#define __ESP8266_H

#ifdef __cplusplus
extern "C" {
#endif

#include "ls1x.h"


char* esp8266_check_cmd(char *str);//ESP8266 发送命令后，检测接收到的应答
char esp8266_send_cmd(char *cmd,char *ack,uint16_t waittime);// 向 ESP8266 发送命令
void esp8266_init(void);// ESP8266 模块进入透传模式
void esp8266_send_data(char *cmd);// 向 ESP8266 发送数据

#ifdef __cplusplus
}
#endif

#endif
