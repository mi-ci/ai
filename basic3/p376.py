# csv 파일 처리
import csv

# file_name = "basic3/weather.csv"
# f = open(file_name, "r")
# lines = csv.reader(f)
# for line in lines :
#     print(line)
# f.close()


# file_name = "basic3/weather.csv"
# f = open(file_name, "r")
# lines = csv.reader(f)
# print(next(lines))
# print(next(lines))
# print(next(lines))
# f.close()


# file_name = "basic3/weather.csv"
# f = open(file_name, "r")
# lines = csv.reader(f)
# next(lines)
# for line in lines :
#     if line[1] == "2023-12-27 0:00" :
#         print(line[2])
# f.close()

read_file_name = "basic3/weather.csv"
write_file_name = "basic3/weather_온도.csv"
rf = open(read_file_name, "r")
wf = open(write_file_name, "w")
lines = csv.reader(rf)
wlines = csv.writer(wf)
next(lines)
for line in lines :
    if line[1] != "2023-12-27" :
        result = line[2]
        wlines.writerows(result)

rf.close()
wf.close()















