package javaBasic4.ch07.sec01;

public class Phone {
	public String model;
	public String color;
	
	public void bell() {
		System.out.println("���� �︳�ϴ�");
	}
	
	public void sendVoice(String message) {
		System.out.println(model + "�� �޼����� �Խ��ϴ�. �ڱ� : " + message);
	}
	
	public void receiveVoice(String message) {
		System.out.println("���� : " + message);
	}
	
	public void hangUp() {
		System.out.println("��ȭ�� �����ϴ�");
	}
	
}
