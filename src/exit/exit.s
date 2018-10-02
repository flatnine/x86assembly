# PURPOSE: Simple program that exits and returns status code
#

# INPUT:
#   None

# OUTPUT:
#   Returns a status code

# Variables:
#   %rax holds system call no
#   %rbx holds the return status

.section .data

.section .text
.globl _start
_start:
mov $1, %rax # Linux system call number
mov $255, %rbx # status call returned to OS
int $0x80     # calls kernel to execute call
