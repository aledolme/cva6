/****************************************************************************************
# Simple custom test:       trigger.c
# Author:                   Alessandra Dolmeta
# Description:              Test the trigger-peripheral.
/****************************************************************************************/


#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "trigger_auto.h"


//**********************MAIN******************************************/
int main() {


    uint32_t volatile * trigger = (uint32_t*)TRIGGER_CTRL;

    //Putting low the trigger
    asm volatile ("": : : "memory");
    *trigger = 1 << TRIGGER_CTRL_STOP;
    asm volatile ("": : : "memory");

    while(1){
        // Activate trigger_GPIO
        *trigger = 1 << TRIGGER_CTRL_START;
        // De-activate trigger_GPIO
        *trigger = 1 << TRIGGER_CTRL_STOP;
    }


    return 0;
}
