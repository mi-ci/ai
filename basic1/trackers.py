from selenium import webdriver
from selenium.webdriver.common.by import By

url = 'https://lolchess.gg/profile/kr/%ED%95%B4%EC%84%A4%EC%99%95%EB%B4%89%EB%8B%AC%EC%9D%B4-KR1/set10'

driver = webdriver.Chrome()
driver.get(url)
stages = driver.find_elements(By.CLASS_NAME,'//div[@class=tier]')
# driver.close()
print(stages)
