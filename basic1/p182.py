# List 요소에 종류는 다양해도 된다
# 자바언어에서 배열은 동일한 언어의 집합
# a = [1, 1.1, "문자", [1,9], 7, 8]
# print(a[:3])
# print(a[2:])
# print(a[1:5:3])
# a = [1,2,3,4]
a = list(range(1,21,2))
# a = list(range(2,10,2))
# print(a)
# print(type(a))

# a = list("abc edf")
# a = list(range(2,10,2), "abcdef") 

color = ["빨강", "주황", "노랑", "초록", "파랑", "남색", "보라"]
# print(color[0])
# print(color[2:6])
# print(color[-3])
# print(color[3:])
# a = [color[1], color[4], color[5]]
# print(type(a))

# 반복문과 리스트
for i in color :
    print(f"나는 {i}색을 좋아합니다")
print(len(color))

# 4-1 java.lang은 import 하지 않아도 쓸 수 있다. 모든 클라스는 Object의 자식들 
# Object에 들어있는 메소드들은 모든 클래스가 사용 할 수 있음 자동 상속
# 동등객체 hashcode equals 수정 


