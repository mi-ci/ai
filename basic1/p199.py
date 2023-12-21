#병합, 합계, 순서꺼꾸로, 정렬, 복사
# person1 = ["kim", 24, "kim@naver.com"]
# person2 = ["lee", 35, "lee@hanmail.com"]
# person3 = ["kim", 24, "kim@naver.com"]
# print(person1+person2+person3)

# scores = list(range(80,101,4))
# print(scores)
# sum = sum(scores)
# print(sum)

# data = ["a", "b"]
# sum = sum(data)
# print(sum)

# score = list(range(90,101,1))
# a = sum(score)/len(score)
# print(a)

# data = ["사과", "배", "귤", "딸기"]
# data.reverse()
# data.reverse()
# print(data)

fruits = ["apple", "banana", "orange"]

a = fruits.copy()

aa = fruits

fruits.insert(1,"pineapple")
print(fruits)
print(a)
print(aa)