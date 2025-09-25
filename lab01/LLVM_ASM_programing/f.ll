; int calculateFactorial(int n)
;函数定义会以define开头，i32指的是返回类型为int

define i32 @calculateFactorial(i32 %n){
entry:
    %cmp0 = icmp eq i32 %n, 0
    %cmp1 = icmp eq i32 %n, 1
    %or = or i1 %cmp0,%cmp1
    ;将虚拟寄存器cmp0和cmp1的或结果保存于%or中
    br i1 %or,label %ret1,label %loop_entry
    ;此处br为有条件分支，若i1型的%or为真，则跳转到%ret1

ret1:
    ret i32 1

loop_entry:
    ;先分配空间，再将常数1存入
    %factorial = alloca i32, align 4
    store i32 1,i32* %factorial
    %i = alloca i32, align 4
    store i32 2,i32* %i

    br label %loop_cond
    ;此处的br为无条件分支，跳到loop_cond下

loop_cond:
    %i_val = load i32, i32* %i
    %cmp = icmp sle i32 %i_val, %n
    br i1 %cmp, label %loop_body, label %loop_end
    ;若i<=n，则%cmp为真，跳转至loop_body

loop_body:
    %f_val = load i32,i32* %factorial
    %i_val2 = load i32, i32* %i
    %t1 = mul i32 %f_val, %i_val2
    ;进行乘法运算，输出类型为i32
    store i32 %t1,i32* %factorial

    %t2 = add i32 %i_val2,1
    store i32 %t2,i32* %i
    br label %loop_cond

loop_end:
    %res = load i32,i32* %factorial
    ret i32 %res
}

define i32 @main(){
entry:
    %number = alloca i32, align 4
    %num_val = call i32 @getint()
    store i32 %num_val,i32* %number

    %cmp_m = icmp slt i32 %num_val,0
    br i1 %cmp_m,label %sit_error,label %main_body

sit_error:
    call void @putint(i32 -1)
    br label %main_end
    
main_body:
    %number_val = load i32,i32* %number
    %result = call i32 @calculateFactorial(i32 %number_val)
    call void @putint(i32 %result)
    br label %main_end

main_end:
    ret i32 0
}