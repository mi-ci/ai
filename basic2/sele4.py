from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import time

class InternetSpeedTwitterBot:
    def __init__(self):
        options = Options()
        # user_agent = 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Mobile Safari/537.36'
        # options.add_argument(f"user-agent = {user_agent}")
        # options.add_argument("--disable-web-security") 
        options.add_argument("headless")
        options.page_load_strategy = 'none'
        self.driver = webdriver.Chrome(options=options)
        self.wait = WebDriverWait(self.driver, 30)

    # def get_internet_speed(self):
    #     self.driver.get("https://lolchess.gg/profile/kr/%ED%95%B4%EC%84%A4%EC%99%95%EB%B4%89%EB%8B%AC%EC%9D%B4-KR1/set10")
    #     self.wait.until(EC.element_to_be_clickable((By.CLASS_NAME, "tier")))
    #     self.driver.execute_script("window.stop();")
    #     # self.driver.find_element(By.CSS_SELECTOR, "span.start-text").click()

    def get_internet_speed(self):
        self.driver.get("https://lolchess.gg/leaderboards?region=kr&mode=ranked")
        self.wait.until(EC.element_to_be_clickable((By.XPATH, '//*[@id="content-container"]/div[3]/div[2]/div/div/div/div/div[1]/span')))
        self.driver.execute_script("window.stop();")
        all_rows = self.driver.find_elements(By.XPATH,'//*[@id="content-container"]/div[3]/div[2]/div/div/div/div/div[1]/span')
        # print('len(all_rows):', len(all_rows))
        for row in all_rows :
            print(row.text, end= " ")
        # self.driver.find_element(By.CSS_SELECTOR, "span.start-text").click()

browser = InternetSpeedTwitterBot()
browser.get_internet_speed()
time.sleep(10)