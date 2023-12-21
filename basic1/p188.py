# #요소변환 수정(삽입, 삭제, 업데이트)
flowers = ["목련", "벚꽃", "장미", "백일홍"]
# print(flowers)
# flowers[1] = "무궁화"
# print(flowers)
# flowers[-1] = "개나리"
# print(flowers)

# #추가하기 뒤로 붙이기 . append하면 뒤로 붙음
# flowers.append("백일홍")
# print(flowers)

#메소드 vs 함수 동작시키기
# 메소는 객체안에서 동작 시키는 것
# 함수는 객체랑 상관없이 동작 시키는것

# 실무에서는 리스트를 어떻게 쓸까? 빈리스트 만들고 나중에 추가
# scores = [] # 빈 리스트

# scores.append(100)
# scores.append(90)
# scores.append(85)
# scores.append(100)
# scores.append(98)
# print(scores)

#특정위치 삽입
# fruits = []
# while True :
#     fruit = input("좋아하는 과일은?")
#     if fruit == "끝" :
#         break
#     fruits.append(fruit)
# print(fruits)
# fruits.insert(1,"자몽")

# 특정요소 위치찾기
# number = [5,20,13,7,8,22,7,17]
# idx = number.index(7, 5) # 7이라는 값을 찾는데 인덱스번호 5번 이후로
# print(idx)
# number = [5,20,13,7,8,22,7,17]
# flowers = ["목련", "벚꽃", "장미", "벚꽃", "백일홍", "장미", "벚꽃"]
# print(flowers.index("벚꽃",4))

flowers = ["목련", "벚꽃", "장미", "벚꽃", "백일홍", "장미", "벚꽃"]
flowers.remove("목련")
print(flowers)
x = flowers.pop(2)
# print(x)

flowers.clear()
print(flowers)

















