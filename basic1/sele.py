from selenium import webdriver
import time
from selenium.webdriver.common.by import By


# url = "https://www.flashscore.com/match/KIhcwU8b/#h2h/overall"
url = "https://lolchess.gg/leaderboards?region=kr&mode=ranked"
url2 = "https://lolchess.gg/profile/kr/%ED%95%B4%EC%84%A4%EC%99%95%EB%B4%89%EB%8B%AC%EC%9D%B4-KR1/set10"

driver = webdriver.Chrome()
driver.get(url)

time.sleep(3)

# all_rows = driver.find_elements(By.XPATH,'//*[@id="detail"]/div[8]/div[2]/div[1]/div[2]')
all_rows = driver.find_elements(By.XPATH,'//*[@id="content-container"]/div[3]/div[2]/div/div/div/div/div[1]/span')
print('len(all_rows):', len(all_rows))
for row in all_rows :
    print(row.text)

# count = 0
# for row in all_rows:
#     date   = row.find_element_by_xpath(".//span[@class='h2h__date']").text
#     result = row.find_element_by_xpath(".//span[@class='h2h__regularTimeResult']").text
#     team_home = row.find_element_by_xpath(".//span[contains(@class, 'h2h__homeParticipant')]").text
#     team_away = row.find_element_by_xpath(".//span[contains(@class, 'h2h__awayParticipant')]").text
#     if result != '0 : 10':
#         count += 1
#         print(f"{date} | {result} | {team_home:20} | {team_away}")
#     if count == 5:
#         break
