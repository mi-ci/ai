import pyautogui
import win32api, win32con
import time
import keyboard

def click(x,y) :
    win32api.SetCursorPos((x,y))
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN,0,0)
    time.sleep(0.03)
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP,0,0)


while keyboard.is_pressed('q') == False :
    if pyautogui.pixel(592,400)[0] == 0 :
        click(592,400)
    if pyautogui.pixel(682,400)[0] == 0 :
        click(682,400)
    if pyautogui.pixel(768,400)[0] == 0 :
        click(768,400)
    if pyautogui.pixel(869,400)[0] == 0 :
        click(869,400)

