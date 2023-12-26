from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By
import time


# url = "https://lolchess.gg/leaderboards?region=kr&mode=ranked"
url = "https://lolchess.gg/profile/kr/%ED%95%B4%EC%84%A4%EC%99%95%EB%B4%89%EB%8B%AC%EC%9D%B4-KR1/set10"

driver = webdriver.Chrome()
driver.get(url)
WebDriverWait(driver, 10).until(EC.visibility_of_element_located(By.CLASS_NAME()))
driver.execute_script("window.stop();")

time.sleep(1)

# all_rows = driver.find_elements(By.XPATH,'//*[@id="detail"]/div[8]/div[2]/div[1]/div[2]')
all_rows = driver.find_elements(By.XPATH,'//*[@id="content-container"]/div[3]/div[2]/div/div/div/div/div[1]/span')
# print('len(all_rows):', len(all_rows))
for row in all_rows :
    print(row.text, end= " ")