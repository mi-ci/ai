package javaBasic4.ch07.sec15;

public abstract class Phone {
	String owner;
	
	public Phone() {
		
	}
	
	public Phone(String owner) {
		this.owner = owner;
	}
	
	public abstract void turnOn(); // {����} ���� �޼ҵ� = �߻� // �޼ҵ� �Ƿ翧�� �ִ� �޼ҵ�
	
	public abstract void turnOff(); // �̿ϼ��� ���赵
	
}