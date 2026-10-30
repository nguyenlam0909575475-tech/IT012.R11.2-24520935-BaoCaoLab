# Ho ten: Nguyen Thanh Hoang Lam
# MSSV: 24520935
# Muc dich: Chuyen bieu thuc sang MIPS

# Ma nguon 4 - chuyen cau lenh thanh lenh hop ngu

.text
.globl main

main:
    # Gia tri ban dau
    addi $s0, $zero, 8      # y = 8
    addi $s1, $zero, 5      # z = 5
    addi $s2, $zero, 3      # w = 3

    # x1 = y + z + w
    add  $t0, $s0, $s1
    add  $t0, $t0, $s2

    # x2 = (y + z) - (w + 5)
    add  $t1, $s0, $s1
    addi $t5, $s2, 5
    sub  $t1, $t1, $t5

    # x3 = y
    add  $t2, $s0, $zero

    # x4 = z - y
    sub  $t3, $s1, $s0

    # Ket thuc
    li   $v0, 10
    syscall
