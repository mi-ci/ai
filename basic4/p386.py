#json 파일을 파이썬으로 읽어오기
import json
# with open("basic4/member.json", "r", encoding="utf-8") as f :
#     dict = json.load(f)
# # print(dict["history"][1]["route"])
# print(dict["age"])


with open("basic4/b.json", "r", encoding="utf-8") as f :
    dict = json.load(f)
print(dict["contactNumbers"][0]["type"])
print(dict["favoriteSports"][0])




