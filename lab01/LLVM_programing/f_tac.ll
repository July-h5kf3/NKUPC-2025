func calculateFactorial(n):
    if n == 0 goto L1
    if n == 1 goto L1
    goto L2
L1:
   return 1
L2:
    factorial = 1
    i = 2
L3:
    if i <= n goto L4
    goto L5
L4:
    t1 = factorial * i
    factorial = t1
    t2 = i + 1
    i = t2
    goto L3
L5: 
    return factorial


func main():
    number = call getint()
    if number < 0 goto L6
    goto L7
L6:
    call putstr("error\n")
    goto L8
L7:
    result = calculateFactorial(number)
    call putint(result)
L8:
    return 0