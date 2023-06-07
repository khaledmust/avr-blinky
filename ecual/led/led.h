#ifndef LED_H_
#define LED_H_
#include "../../mcal/gpio/gpio_private.h"
#include "../../utilities/std_types.h"

/**
 * @defgroup LED_PORT_PIN_CONFIGURATION
 * @{
 */
#define BLUE_LED_PORT_ID    PORTC_ID ///< The port ID where the blue LED is connected to.
#define BLUE_LED_PIN_ID     PIN2_ID ///< The pin number where the blue LED is connected to.

#define GREEN_LED_PORT_ID   PORTC_ID ///< The port ID where the green LED is connected to.
#define GREEN_LED_PIN_ID    PIN1_ID ///< The pin number where the green LED is connected to.

#define RED_LED_PORT_ID     PORTC_ID ///< The port ID where the red LED is connected to.
#define RED_LED_PIN_ID      PIN0_ID ///< The pin number where the red LED is connected to.
/**@}*/

#define USR_LED_1_PORT_ID   PORTA_ID
#define USR_LED_1_PIN_ID    PIN1_ID

#define USR_LED_2_PORT_ID   PORTA_ID
#define USR_LED_2_PIN_ID    PIN2_ID

#define USR_LED_3_PORT_ID   PORTA_ID
#define USR_LED_3_PIN_ID    PIN3_ID

#define USR_LED_4_PORT_ID   PORTA_ID
#define USR_LED_4_PIN_ID    PIN4_ID

/**
 * @enum en_LED_Names
 * @brief Specifies the names of the connected LEDs.
 */
typedef enum {
    LED_BLUE, LED_GREEN, LED_RED
}en_LED_Names;

/**
 * @enum en_LED_State
 * @brief Specifies the exit state of LED driver functions.
 */
typedef enum {
    LED_STATUS_SUCCESS, LED_STATUS_FAILED
}en_LED_State;

typedef struct {
    uint8 USR_LED_PORT_ID;
    uint8 USR_LED_PIN_ID;
}st_LED_usr_config_t;

/**
 * @brief Initializes the direction of the LED pins as output pins.
 * @param[in] led_name Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_init(en_LED_Names led_name);

/**
 * @brief Turns on the specified LED.
 * @param led_name Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_on(en_LED_Names led_name);

/**
 * @brief Turns off the specified LED.
 * @param led_name Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_off(en_LED_Names led_name);

/**
 *
 * @param led_name Toggles the state of the specified LED.
 * @return Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 *  @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_toggle(en_LED_Names led_name);

/**
 * @brief Initializes the direction of the LED pins as output pins.
 * This is done by using the GPIO_setPinDirection function from the GPIO driver.
 * @param[in] st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_usr_init(st_LED_usr_config_t *st_ptr_LED_usr_config);

/**
 * @brief Turns on the specified LED.
 * This is done by using the GPIO_writePin function from the GPIO driver.
 * @param st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_usr_on(st_LED_usr_config_t *st_ptr_LED_usr_config);

/**
 * @brief Turns off the specified LED.
 * This is done by using the GPIO_writePin function from the GPIO driver.
 * @param st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */

en_LED_State LED_usr_off(st_LED_usr_config_t *st_ptr_LED_usr_config);

/**
 * @brief Toggles the state of the specified LED.
 * This is done by using the GPIO_togglePin function from the GPIO driver.
 * @param st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_usr_toggle(st_LED_usr_config_t *st_ptr_LED_usr_config);

#endif /* LED_H_ */