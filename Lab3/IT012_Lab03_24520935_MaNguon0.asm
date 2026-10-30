# Ho ten: Nguyen Thanh Hoang Lam
# MSSV: 24520935
# Muc dich: Lam quen voi thanh ghi
# Ma nguon 0 - kiem tra nhanh
.data
msg:   .asciiz "Xin chao, MARS!\n"
 
.text
.globl main
main:
    li   $v0, 4
    la   $a0, msg
    syscall
    li   $v0, 10
    syscall
