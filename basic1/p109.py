import random
#영어퀴즈 만들기 사자의 영어단어는 무엇일까요?
# word = input("사자의 영어단어는 무엇일까요?")
# word = word.replace(" ","")
# word = word.lower()
# if word == "lion":
#     print("정답")
# else :
    # print("오답")
i = 0
c = 0
while i < 10 :
    word = input("'사자' or '오렌지' or '기차'를 입력하세요")
    if word == "사자":
        word2 = input(f"{word}의 영어단어를 입력하세요")
        if word2 == "lion":
            print("정답")
            c = c + 1
        else :
            print("오답")
    elif word == "오렌지":
        word2 = input(f"{word}의 영어단어를 입력하세요")
        if word2 == "orange":
            print("정답")
            c = c + 1
        else :
            print("오답")
    elif word == "기차":
        word2 = input(f"{word}의 영어단어를 입력하세요")
        if word2 == "train":
            print("정답")
            c = c + 1
        else :
            print("오답")
    else :
        print("'사자' or '오렌지'를 입력하세요")
    i=i+1
print(f"맞은문제수 : {c} 틀린문제수 : {10-c}")


# c = 0
# a= random.randint(10,15)
# for i in range(1,a,1):
#     q = int(input(f"{i}번 문제 정답은?"))
#     if random.randint(0,1) == 0 :
#         c = c + 1
# print(f"푼 문제수 : {a} 맞은 문제수 : {c} 틀린 문제수 : {a-c}")


    