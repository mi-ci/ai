package javaBasic4.ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {
		Phone p = new Phone();
		p.bell();
		p.sendVoice("�� ���!");
		p.receiveVoice("�� ���");
		p.hangUp();
		
		SmartPhone s = new SmartPhone();
		s.sendVoice("���� ����");
		
		SmartPhone s2 = new SmartPhone("������", "���");
		System.out.println(s2.model);
		
		s2.setWifi(true);
		s2.internet();
		s2.setWifi(false);
		s2.internet();
		
		s2.sendVoice("�ڵ��� ���?");
		System.out.print(s2.model + " �� " + s2.color + "�̰� ");
		s2.bell();
		
		
		
		
	}

}
