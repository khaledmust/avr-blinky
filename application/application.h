#ifndef APPLICATION_H
#define	APPLICATION_H

#include "../ecual/led/led.h"
#include "../ecual/push_button/push_button.h"

extern st_LED_usr_config_t st_LED_1;
extern st_LED_usr_config_t st_LED_2;
extern st_LED_usr_config_t st_LED_3;
extern st_LED_usr_config_t st_LED_4;


typedef enum {
    APP_STATUS_FAILED, APP_STATUS_SUCCESS
}en_APP_status_t;

en_APP_status_t APP_init(void);
en_APP_status_t APP_start(void);

void test(void);

#endif	/* APPLICATION_H */