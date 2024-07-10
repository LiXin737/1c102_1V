/******************************************************
 * 实验名称：ESP8266测试实验
 * 
 * 实验准备：龙芯1C102开发板，ESP8266模块
 * 
 * 实验接线：ESP8266模块接到龙芯1C102开发板的UART0接口，
            即GPIO_Pin_06和GPIO_Pin_07
 * 
 * 实验现象：通过AT指令配置ESP8266模块为透传模式
******************************************************/
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"

#define LED 20

int main(int arg, char *args[])
{

    esp8266_init();

    while(1)
    {
        gpio_write_pin(LED,1);
        delay_ms(100);
        gpio_write_pin(LED,0);
        delay_ms(100);
    }

    return 0;
}
