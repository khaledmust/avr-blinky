/* 
 * File:   main.c
 * Author: khaled
 *
 * Created on June 6, 2023, 1:18 AM
 */


#include "application/application.h"
#include "mcal/gpio/gpio.h"
#include "ecual/led/led.h"
#include "ecual/push_button/push_button.h"

int main() {
    (void)APP_init();
    
    while (1) {
        (void)APP_start();
    }
}

