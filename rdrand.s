.text
.globl _rdrandAvailable, _rdrand

_rdrandAvailable:
    mov $1, %rax
    cpuid
    mov $1, %rax
    shl $30, %rax
    and %rcx, %rax
    shr $30, %rax
    ret

_rdrand:
    .byte  0x0f, 0xc7, 0xf0
    ret
