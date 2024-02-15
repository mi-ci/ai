import requests
from bs4 import BeautifulSoup

url='https://www.coupang.com/np/campaigns/82/components/178155?listSize=60&brand=&offerCondition=&filterType=&isPriceRange=false&minPrice=&maxPrice=&page=1&channel=user&fromComponent=N&selectedPlpKeepFilter=&sorter=saleCountDesc&filter=&component=178155&rating=0'
hdr = {'Accept-Language': 'ko_KR,en;q=0.8', 'User-Agent': ('Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Mobile Safari/537.36')}

req = requests.get(url, headers=hdr)

html = req.text
soup = BeautifulSoup(html, 'html.parser')

a = soup.find("div","name").text
print(a)
b = soup.find("strong","price-value").text
b = b.replace(",","")
print(b)

# 지금 쓰고 있는 Python이랑 Mysql이랑 연결하기
import pymysql
con = pymysql.connect(host="localhost", user="root", password="1234", db="coupang", charset="utf8")
cur = con.cursor()
sql = f"insert into digital() values('{a}',{b});"
cur.execute(sql)
con.commit()

# for i in soup.find_all("dd","descriptions"):
#     a = i.find("div","name").text
#     a = a.strip()
#     a = a.split(',')[0]
#     a = a.split(' +')[0]
#     b = i.find("strong","price-value").text
#     b = b.replace(",","")
#     sql = f"insert into digital() values('{a}',{b});"
#     cur.execute(sql)
#     con.commit()
