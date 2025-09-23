import random

def guess_number():
    number = random.randint(1, 100)
    print("我想了一个 1 到 100 的数字，你能猜出来吗？")

    while True:
        guess = int(input("请输入你的猜测: "))
        if guess < number:
            print("太小了，再试试！")
        elif guess > number:
            print("太大了，再试试！")
        else:
            print("恭喜你，猜对了！")
            break

if __name__ == "__main__":
    guess_number()
