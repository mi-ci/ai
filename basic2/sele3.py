from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import time

class InternetSpeedTwitterBot:
    def __init__(self):
        options = Options()
        options.add_argument("start-maximized")
        options.page_load_strategy = 'none'
        self.driver = webdriver.Chrome(options=options)
        self.wait = WebDriverWait(self.driver, 30)

    def get_internet_speed(self):
        self.driver.get("https://www.speedtest.net/")
        self.wait.until(EC.element_to_be_clickable((By.CLASS_NAME, "start-button"))).click()
        self.driver.execute_script("window.stop();")
        self.driver.find_element(By.CSS_SELECTOR, "span.start-text").click()

browser = InternetSpeedTwitterBot()
browser.get_internet_speed()
time.sleep(10)