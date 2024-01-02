# f = open("C:/ai/study/python_study/basic3/new_file1.txt", "a", encoding="utf-8")

# names = ["이순신", "김희수"]
# for name in names :
#     f.write(name + "\n")

# print("파일 쓰기 완료")
# f.close


f = open("C:/ai/study/python_study/basic3/new_file1.txt", "r", encoding="utf-8")

lines = f.readlines()
line = f.readline()
print(line)
f.close()


