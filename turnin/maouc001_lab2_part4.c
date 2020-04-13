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
    /* Insert DDR and PORT initializations */
    DDRA = 0x00; PORTA = 0xFF; // configure port A's 8 pins as inputs
    DDRB = 0x00; PORTB = 0xFF; // configure port B's 8 pins as inputs
    DDRC = 0x00; PORTC = 0xFF; // configure port C's 8 pins as inputs
    DDRD = 0xFF; PORTD = 0x00; // configure port D's 8 pins as outputs

    /* Insert your solution below */
    unsigned char totWeight;   // holds the total weight of ports A B C
    unsigned char outputValue; // temporary variable to outpur 
    
    while (1) {
	
	// get total weight  
	totWeight = ( PINA + PINB + PINC );
		
	// if total weight > 140, set D0 = 1, else D0 = 0. 
	outputValue = ( totWeight > 140 ) ?	( totWeight & 0xFE ) | 0x01	:	( totWeight & 0xFE ); 

	// if A - C > 80, set D1 = 1, else D1 = 0
	outputValue = ( PINA - PINC > 80 ) ?	( outputValue & 0xFD ) | 0x02	:	( outputValue & 0xFD );     

	// assign port D for outputValue
	PORTD = outputValue;

    }
    return 1;
}
