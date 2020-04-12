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

# Empty lot ******* 0000 
test "PINA: 0x00 => PORTC 0x04"
# Set inputs
setPINA 0x00
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x04
# Check pass/fail
checkResult
#A = 0x00; PORTA = 0xFF; // configure port A's 8 pins as inputs

#3 empty spaces ******** 0001
#Add tests below
test "PINA: 0x01 => PORTC: 0x03"
# Set inputs
setPINA 0x01
# Continue for several ticks
continue 5 
# Set expect values
expectPORTC 0x03
# Check pass/fail
checkResult

# Add tests below ****** 0010
 test "PINA: 0x02 => PORTC: 0x03"
# Set inputs
setPINA 0x02
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x03
# Check pass/fail
checkResult

# Add tests below ******** 0011
test "PINA: 0x03 => PORTC:0x02"
# Set inputs
setPINA 0x03
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x02
# Check pass/fail
checkResult

# Add tests below ******** 0100
test "PINA: 0x04 => PORTC:0X03"
# Set inputs
setPINA 0x04
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x03
# Check pass/fail
checkResult

# Add tests below ******** 0101
test "PINA: 0x05 => PORTC:0x02"
# Set inputs
setPINA 0x05
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x02
# Check pass/fail
checkResult

# Add tests below ******** 0110
test "PINA: 0x06 => PORTC:0x02"
# Set inputs
setPINA 0x06
# Continue for several ticks
 continue 5
# Set expect values
expectPORTC 0x02
# Check pass/fail
checkResult

# Add tests below ******** 0111
test "PINA: 0x07 => PORTC:0x01"
# Set inputs
 setPINA 0x07
# Continue for several ticks
 continue 5
# Set expect values
 expectPORTC 0x01
# Check pass/fail
checkResult

# Add tests below ******** 1000
test "PINA: 0x08 => PORTC:0x03"
# Set inputs
setPINA 0x08
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x03
# Check pass/fail
checkResult

# Add tests below ******** 1001
test "PINA: 0x09 => PORTC:0x02"
# Set inputs
setPINA 0x09
# Continue for several ticks
continue 5
# Set expect values
 expectPORTC 0x02
# Check pass/fail
checkResult

# Add tests below ******** 1010
test "PINA: 0x0A => PORTC:0x02"
# Set inputs
setPINA 0x0A
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x02
# Check pass/fail
checkResult

# Add tests below ******** 1011
test "PINA: 0x0B => PORTC:0x01"
# Set inputs
setPINA 0x0B
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x01
# Check pass/fail
checkResult

# Add tests below ******** 1100
test "PINA: 0x0C => PORTC:0x02"
# Set inputs
setPINA 0x0C
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x02
# Check pass/fail
checkResult

# Add tests below ******** 1101
test "PINA: 0x0D => PORTC:0x01"
# Set inputs
setPINA 0x0D
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x01
# Check pass/fail
checkResult

# Add tests below ******** 1110
test "PINA: 0x0E => PORTC:0x01"
# Set inputs
setPINA 0x0E
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x01
# Check pass/fail
checkResult

# Add tests below ******** 1111
test "PINA: 0x0F => PORTC:0x00"
# Set inputs
setPINA 0x0F
# Continue for several ticks
continue 5
# Set expect values
expectPORTC 0x00
# Check pass/fail
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
