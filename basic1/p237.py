# score = {"kor" :90, "eng" : 89, "math" :95}
# print(score["math"])

# user = {"id":"kim55", "name":"강성준", "level":"7", "point":10000}
# user["vip"] = "우수회원"
# user["vip"] = "최우수회원"
# user.pop("vip")
# print(user)

# area_code = {"02" : "서울", "051":"부산", "053":"대구", "062":"광주"}
# print(area_code)
# for key in area_code :
#     print(f"{key} ㅁ {area_code[key]}")

inventory = {"메로나":[300,20], "비비빅":[400,3], "죠스바":[250,100]}
# print(inventory["메로나"][0] )
# print(inventory["죠스바"][1])
# inventory["죠스바"][0]=350
# print(inventory["죠스바"][0])
# inventory["월드콘"] = [1500,500]
# print(inventory)
# for i in inventory:
#     print(i)
for i in inventory:
    print(f"{i} {inventory[i][0]} {inventory[i][1]} {inventory[i][0]*inventory[i][1]}")
