# Test file for "Lab2_introToAVR"


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n

# test case 1: (total weight < 140)and (A - C < 80)
# A = 50, B = 30, C = 30, totWeight = 110, D0 = 0, D1 = 0, PORTD = 108
test "PINA: 0x32, PINB: 0x1E, PINC: 0x1E => PORTD: 0x6C "
# Set inputs
setPINA 0x32   
setPINB 0x1E
setPINC 0x1E
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0x6C
# Check pass/fail
checkResult


#test case 2: (total weight < 140)and (A - C > 80)
# A = 100, B = 30, C = 5, totWeight = 135, D0 = 0, D1 = 1, PORTD = 134
test "PINA: 0x64, PINB: 0x1E, PINC: 0x05 => PORTD: 0x86 "
#Set inputs
setPINA 0x64
setPINB 0x1E
setPINC 0x05
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0x86
# Check pass/fail
checkResult

# test case 3: (total weight > 140)and (A - C < 80)
#  A = 100, B = 50, C = 30, totWeight = 180, D0 = 1, D1 = 0, PORTD = 181
test "PINA: 0x64, PINB: 0x32, PINC: 0x1E => PORTD: 0xB5 "
# Set inputs
setPINA 0x64
setPINB 0x32
setPINC 0x1E
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0xB5
# Check pass/fail
checkResult

# test case 4: (total weight > 140)and (A - C > 80)
#  A = 100, B = 50, C = 10, totWeight = 160, D0 = 1, D1 = 1, PORTD = 163
test "PINA: 0x64, PINB: 0x32, PINC: 0x0A => PORTD: 0xA3 "
# Set inputs
setPINA 0x64
setPINB 0x32
setPINC 0x0A
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0xA3
# Check pass/fail
checkResult

# test case 5: (total weight =255)and (A - C < 80)
#  A = 100, B = 100, C = 55, totWeight = 255, D0 = 1, D1 = 0, PORTD = 253
test "PINA: 0x64, PINB: 0x64, PINC: 0x37 => PORTD: 0xFD "
# Set inputs
setPINA 0x64
setPINB 0x64
setPINC 0x37
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0xFD
# Check pass/fail
checkResult

# test case 6: (total weight =255)and (A - C > 80)
#  A = 120, B = 100, C = 35, totWeight = 255, D0 = 1, D1 = 1, PORTD = 255
test "PINA: 0x78, PINB: 0x64, PINC: 0x23 => PORTD: 0xFF "
# Set inputs
setPINA 0x78
setPINB 0x64
setPINC 0x23
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0xFF
# Check pass/fail
checkResult

# test case 7: (total weight =140)and (A - C < 80)
#  A = 0, B = 0, C = 0, totWeight = 0, D0 = 0, D1 = 0, PORTD = 0
test "PINA: 0x00, PINB: 0x00, PINC: 0x00 => PORTD: 0x00 "
# Set inputs
setPINA 0x00
setPINB 0x00
setPINC 0x00
# Continue for several ticks
continue 2
# Set expect values
expectPORTD 0x00
# Check pass/fail
checkResult



 Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
