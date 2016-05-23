###################################################################
#
#  对含10个数字的tuple进行冒泡排序
#
###################################################################

.text                                  #代码段声明
.globl main                            #global 指明程序的入口地址main

main:                                  #入口地址main
  addi $t4, $zero, 9                   #t4 = 10 // 声明数组的大小
  loop1:
	la $t1, tuple                  #加载tuple的基地址
	addi $t5, $zero, 0             #t5 = 0 // 初始化内循环的计数器j = 0
  loop2:
	lw $t0, 0($t1)                 #t0 = tuple[j]
	lw $t6, 4($t1)                 #t6 = tuple[j+1]
	sub $t2, $t6, $t0              #t2 = tuple[j+1] - tuple[j]
	bgtz $t2,skip                  #if (tuple[j+1] < tuple[j]) goto skip
	sw $t6, 0($t1)                 #tuple[j] = tuple[j+1]
	sw $t0, 4($t1)                 #tuple[j+1] = tuple[j]
  skip:
	addi $t5, $t5, 1               #t5 += 1 // j += 1
	addi $t1, $t1, 4	       #tuple++
	sub $t2, $t4, $t5              #t2 = i - j
	bgtz $t2,loop2                 #if (i > j) goto loop2
	addiu $t4, $t4, -1             #i--
	lw $a0, 0($t1)
	li $v0, 1                      #output segment
  syscall                              #系统调用
	la $a0, space
	li $v0, 4
  syscall                              #系统调用
	bne $t4, $zero, loop1
	la $t1, tuple                  #loop1 over, output the last number
	lw $a0, 0($t1)
	li $v0, 1
  syscall
	li $v0, 10
  syscall

.data                                  #数据段声明
  tuple:                               #sorted_tuple
	.word 15, 23, 56, 45, 78, 89, 8, 52, 32, 12
  space:                               #排序数字以space分隔
	.asciiz " "
