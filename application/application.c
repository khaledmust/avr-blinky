#include "application.h"
#define F_CPU 16000000UL
#include <util/delay.h>


en_PB_State g_PB_status = 0;

en_PB_Names app_push_button = PB1;

st_LED_usr_config_t st_LED_1 = {
  .USR_LED_PORT_ID = PORTD_ID,
  .USR_LED_PIN_ID = PIN0_ID
};

st_LED_usr_config_t st_LED_2 = {
  .USR_LED_PORT_ID = PORTD_ID,
  .USR_LED_PIN_ID = PIN1_ID
};

st_LED_usr_config_t st_LED_3 = {
  .USR_LED_PORT_ID = PORTD_ID,
  .USR_LED_PIN_ID = PIN3_ID
};

st_LED_usr_config_t st_LED_4 = {
  .USR_LED_PORT_ID = PORTD_ID,
  .USR_LED_PIN_ID = PIN7_ID
};

en_APP_status_t APP_init(void) {
    /* Initialize the push button. */
    g_PB_status = 0;
    en_LED_State led_status = 0;
    g_PB_status = PB_init(PB1);
    if (g_PB_status == PB_STATUS_FAILED) {
        return APP_STATUS_FAILED;
    }
    led_status = LED_usr_init(&st_LED_1);
    if (led_status == LED_STATUS_FAILED) {
        return APP_STATUS_FAILED;
    }
    led_status = LED_usr_init(&st_LED_2);
    if (led_status == LED_STATUS_FAILED) {
        return APP_STATUS_FAILED;
    }
    led_status = LED_usr_init(&st_LED_3);
    if (led_status == LED_STATUS_FAILED) {
        return APP_STATUS_FAILED;
    }
    led_status = LED_usr_init(&st_LED_4);
    if (led_status == LED_STATUS_FAILED) {
        return APP_STATUS_FAILED;
    }
}

    uint8 push_button_count = 0;
    uint8 push_button_status = 0;
en_APP_status_t APP_start(void) {

    g_PB_status = PB_status(app_push_button, &push_button_status);
    _delay_ms(150);
    if (g_PB_status == PB_STATUS_FAILED) {
        return APP_STATUS_FAILED;
    } else {
        if (push_button_status == 0) {
            push_button_count++;
        }
    }
    
    switch (push_button_count) {
        case 0:
            LED_usr_off(&st_LED_1);
            LED_usr_off(&st_LED_2);
            LED_usr_off(&st_LED_3);
            LED_usr_off(&st_LED_4);
            break;
        case 1:
            LED_usr_on(&st_LED_1);
            break;
        case 2:
            LED_usr_on(&st_LED_1);
            LED_usr_on(&st_LED_2);
            break;
        case 3:
            LED_usr_on(&st_LED_1);
            LED_usr_on(&st_LED_2);
            LED_usr_on(&st_LED_3);
            break;
        case 4:
            LED_usr_on(&st_LED_1);
            LED_usr_on(&st_LED_2);
            LED_usr_on(&st_LED_3);
            LED_usr_on(&st_LED_4);
            break;
        case 5:
            LED_usr_off(&st_LED_1);
            LED_usr_on(&st_LED_2);
            LED_usr_on(&st_LED_3);
            LED_usr_on(&st_LED_4);
            break;
        case 6:
            LED_usr_off(&st_LED_1);
            LED_usr_off(&st_LED_2);
            LED_usr_on(&st_LED_3);
            LED_usr_on(&st_LED_4);  
            break;
        case 7:
            LED_usr_off(&st_LED_1);
            LED_usr_off(&st_LED_2);
            LED_usr_off(&st_LED_3);
            LED_usr_on(&st_LED_4);
            break;
        case 8:
            LED_usr_off(&st_LED_1);
            LED_usr_off(&st_LED_2);
            LED_usr_off(&st_LED_3);
            LED_usr_off(&st_LED_4);
            break;
        case 9:
            LED_usr_on(&st_LED_1);
            LED_usr_off(&st_LED_2);
            LED_usr_off(&st_LED_3);
            LED_usr_off(&st_LED_4);
            break;
        default:
            push_button_count = 0;
            //return APP_STATUS_FAILED;
    }
    return APP_STATUS_SUCCESS;
}

void test(void) {
    LED_init(LED_BLUE);
    LED_on(LED_BLUE);
}