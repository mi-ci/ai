from datetime import *


time1 = timedelta(days=3, hours=3, minutes=30)
time2 = timedelta(days=5, hours=5, minutes=40)

print(time2-time1)
print(time2+time1)
today = date.today()
print(today)
week = timedelta(weeks=1)
print(today+week*2)

now = datetime.now()
print(now.year)
print(now.month)
print(now.day)
print(now.hour)
print(now.minute)
print(now.second)





