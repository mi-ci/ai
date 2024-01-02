import time

# seconds = time.time()
# print(time.gmtime().tm_sec)

# tm  = time.gmtime(seconds)
# print(tm)

# tm  = time.localtime(seconds+10000)
# print(tm)

# string = time.ctime()
# print(string)

# tm = time.strftime("%Y년%m월%d일 %p %I시%M분%S초")
# print(tm)

# print("시작")
# time.sleep(10)
# print("끝")

def func():
    sum = 0
    for i in range(1,10000001):
        sum = sum + i
    print(sum)

start = time.time()
func()
end = time.time()
print(end-start)

