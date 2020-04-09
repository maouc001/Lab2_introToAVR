/*	Author: maouc001
 *  Partner(s) Name: 
 *	Lab Section:
 *	Assignment: Lab #  Exercise #
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif

int main(void) {
    DDRA = 0x00; PORTA = 0xFF; // configure port A's 8 pins as inputs
    DDRB = 0xFF; PORTB = 0x00; // configure port B's 8 pins as outputs
    
    // declare variables     
    unsigned char garageDoor ;
    unsigned char lightSensor ;
    unsigned char LED ; 
    
    while (1) { 
 	garageDoor  = PINA & 0x01 ;   // assign garageDoor to A0
        lightSensor = PINA & 0x02 ;   // assign light to A1
       
        // if garage door is open and the sensor light is off then LED = 1 
	LED = (garageDoor && ( !lightSensor )) ? 0x01 : 0x00 ;          

	PORTB = LED ;                 // assign LED to output 
                              
    }
    return 1;
}
