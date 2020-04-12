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

 // return 1 (true) if bit at element k is 1, otherwise return 0 
    unsigned char GetBit(unsigned char x, unsigned char k) {
	return ((x & (0x01 << k)) != 0);
    }  


int main(void) {
    DDRA = 0x00; PORTA = 0xFF; // configure port A's 8 pins as inputs
    DDRC = 0x00; PORTC = 0xFF; // configure port C's 8 pins as inputs
    
    // declare variables     
    unsigned char cntavail ;  // total available spaces
    unsigned char i; 

    while(1) {
	cntavail = 0 ; 		// start the count at 0

	for(i = 0; i < 4; ++i){
        	cntavail = (! GetBit(PINA, i ) ) ? cntavail + 1 : cntavail;
	}
	
	PORTC = cntavail; 	
    }
    return 1; 
}
             
 


