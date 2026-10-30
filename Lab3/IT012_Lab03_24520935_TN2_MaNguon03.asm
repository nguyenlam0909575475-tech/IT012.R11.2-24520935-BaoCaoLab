# Ho ten: Nguyen Thanh Hoang Lam
# MSSV: 24520935
# Muc dich: Tinh dien nang 3 thang
# Ma nguon 3 - dien nang tieu thu cua mot ho gia dinh
# Don vi: kWh

# reading0 -> $s0
# reading1 -> $s1
# reading2 -> $s2
# reading3 -> $s3
# usage1   -> $t0
# usage2   -> $t1
# usage3   -> $t2
# total    -> $t3

.text
.globl main

main:
    # Nap cac chi so cong to
    addi $s0, $zero, 1200
    addi $s1, $zero, 1350
    addi $s2, $zero, 1475
    addi $s3, $zero, 1640

    # Tinh dien nang tung thang
    sub  $t0, $s1, $s0     # usage1 = 150
    sub  $t1, $s2, $s1     # usage2 = 125
    sub  $t2, $s3, $s2     # usage3 = 165

    # Tinh tong ba thang
    add  $t3, $t0, $t1
    add  $t3, $t3, $t2     # total = 440

    # Ket thuc chuong trinh
    li   $v0, 10
    syscall
