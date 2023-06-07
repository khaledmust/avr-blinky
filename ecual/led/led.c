#include "led.h"
#include "../../mcal/gpio/gpio.h"

/**
 * @brief Initializes the direction of the LED pins as output pins.
 * This is done by using the GPIO_setPinDirection function from the GPIO driver.
 * @param[in] led_name Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_init(uint8 led_name) {
    switch (led_name) {
        case LED_BLUE:
            GPIO_setPinDirection(BLUE_LED_PORT_ID, BLUE_LED_PIN_ID, GPIO_PIN_OUTPUT);
            break;
        case LED_GREEN:
            GPIO_setPinDirection(GREEN_LED_PORT_ID, GREEN_LED_PIN_ID, GPIO_PIN_OUTPUT);
            break;
        case LED_RED:
            GPIO_setPinDirection(RED_LED_PORT_ID, RED_LED_PIN_ID, GPIO_PIN_OUTPUT);
            break;
        default:
            return LED_STATUS_FAILED;
    }
    return LED_STATUS_SUCCESS;
}

/**
 * @brief Initializes the direction of the LED pins as output pins.
 * This is done by using the GPIO_setPinDirection function from the GPIO driver.
 * @param[in] st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_usr_init(st_LED_usr_config_t *st_ptr_LED_usr_config) {
    en_GPIO_state_t init_state = 0;
    init_state = GPIO_setPinDirection(st_ptr_LED_usr_config->USR_LED_PORT_ID, st_ptr_LED_usr_config->USR_LED_PIN_ID, GPIO_PIN_OUTPUT);
    if (init_state == GPIO_STATUS_FAILED) {
        return LED_STATUS_FAILED;
    } else {
        return LED_STATUS_SUCCESS;
    }
}

/**
 * @brief Turns on the specified LED.
 * This is done by using the GPIO_writePin function from the GPIO driver.
 * @param led_name Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_on(uint8 led_name) {
    switch (led_name) {
        case LED_BLUE:
            GPIO_writePin(BLUE_LED_PORT_ID, BLUE_LED_PIN_ID, GPIO_PIN_HIGH);
            break;
        case LED_GREEN:
            GPIO_writePin(GREEN_LED_PORT_ID, GREEN_LED_PIN_ID, GPIO_PIN_HIGH);
            break;
        case LED_RED:
            GPIO_writePin(RED_LED_PORT_ID, RED_LED_PIN_ID, GPIO_PIN_HIGH);
            break;
        default:
            return LED_STATUS_FAILED;
    }
    return LED_STATUS_SUCCESS;
}

/**
 * @brief Turns on the specified LED.
 * This is done by using the GPIO_writePin function from the GPIO driver.
 * @param st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_usr_on(st_LED_usr_config_t *st_ptr_LED_usr_config) {
    en_GPIO_state_t on_state = 0;
    on_state = GPIO_writePin(st_ptr_LED_usr_config->USR_LED_PORT_ID, st_ptr_LED_usr_config->USR_LED_PIN_ID, GPIO_PIN_HIGH);
    if (on_state == GPIO_STATUS_FAILED) {
        return LED_STATUS_FAILED;
    } else {
        return LED_STATUS_SUCCESS;
    }
}

/**
 * @brief Turns off the specified LED.
 * This is done by using the GPIO_writePin function from the GPIO driver.
 * @param led_name Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_off(uint8 led_name) {
    switch (led_name) {
        case LED_BLUE:
            GPIO_writePin(BLUE_LED_PORT_ID, BLUE_LED_PIN_ID, GPIO_PIN_LOW);
            break;
        case LED_GREEN:
            GPIO_writePin(GREEN_LED_PORT_ID, GREEN_LED_PIN_ID, GPIO_PIN_LOW);
            break;
        case LED_RED:
            GPIO_writePin(RED_LED_PORT_ID, RED_LED_PIN_ID, GPIO_PIN_LOW);
            break;
        default:
            return LED_STATUS_FAILED;
    }
    return LED_STATUS_SUCCESS;
}


/**
 * @brief Turns off the specified LED.
 * This is done by using the GPIO_writePin function from the GPIO driver.
 * @param st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */

en_LED_State LED_usr_off(st_LED_usr_config_t *st_ptr_LED_usr_config) {
    en_GPIO_state_t off_state = 0;
    off_state = GPIO_writePin(st_ptr_LED_usr_config->USR_LED_PORT_ID, st_ptr_LED_usr_config->USR_LED_PIN_ID, GPIO_PIN_LOW);
    if (off_state == GPIO_STATUS_FAILED) {
        return LED_STATUS_FAILED;
    } else {
        return LED_STATUS_SUCCESS;
    }
}

/**
 *
 * @param led_name Toggles the state of the specified LED.
 * This is done by using the GPIO_togglePin function from the GPIO driver.
 * @return Specifies the LED to be initialized.
 * This parameter can be on of the en_LED_Names enum:
 * - blue
 * - green
 * - red
 *  @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_toggle(uint8 led_name) {
    switch (led_name) {
        case LED_BLUE:
            GPIO_togglePin(BLUE_LED_PORT_ID, BLUE_LED_PIN_ID);
            break;
        case LED_GREEN:
            GPIO_togglePin(GREEN_LED_PORT_ID, GREEN_LED_PIN_ID);
            break;
        case LED_RED:
            GPIO_togglePin(RED_LED_PORT_ID, RED_LED_PIN_ID);
            break;
        default:
            return LED_STATUS_FAILED;
    }
    return LED_STATUS_SUCCESS;
}

/**
 * @brief Toggles the state of the specified LED.
 * This is done by using the GPIO_togglePin function from the GPIO driver.
 * @param st_ptr_LED_usr_config Address of the configuration structure of LED.
 * @return LED_STATUS_SUCCESS
 * @return LED_STATUS_FAILED
 */
en_LED_State LED_usr_toggle(st_LED_usr_config_t *st_ptr_LED_usr_config) {
    en_GPIO_state_t toggle_state = 0;
    toggle_state = GPIO_togglePin(st_ptr_LED_usr_config->USR_LED_PORT_ID, st_ptr_LED_usr_config->USR_LED_PIN_ID);
    if (toggle_state == GPIO_STATUS_FAILED) {
        return LED_STATUS_FAILED;
    } else {
        return LED_STATUS_SUCCESS;
    }
}
