package javaBasic4.ch07.sec01;

public class SmartPhone extends Phone {
	public boolean wifi;

	public SmartPhone(String model, String color) {
		this.model = model;
		this.color = color;
	}

	public SmartPhone() {
	}
	
	public void setWifi(boolean wifi) {
		this.wifi = wifi;
	}
	
	public void internet() {
		if(wifi == true) {
			System.out.println(model + "�� ���ͳ��� �����մϴ�");
		}
		else {
			System.out.println(model + "�� �������̰� �ȵǿ�");
		}
	}
	
	
}
