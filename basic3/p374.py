import os

if os.path.exists("basic3/new_file.txt") :
    os.remove("basic3/new_file.txt")
    print("삭제 완료")
else :
    print("삭제하려는 파일이 없어요")

# 폴더 만들기
if os.path.exists("basic3/mm") :
    print("이미 폴더가 있어요")
else :
    os.mkdir("basic3/mm")
    print("폴더 생성 완료")

#폴더 이름 바꾸기
# if os.path.exists("basic3/mm") :
#     os.rename("basic3/mm", "basic3/nem_mm")
# else :
#     os.mkdir("basic3/mm")
#     print("폴더 생성 완료")

#폴더 지우기
if os.path.exists("basic3/nem_mm") :
    os.rmdir("basic3/nem_mm")
else :
    os.mkdir("basic3/mm")
    print("폴더 생성 완료")

