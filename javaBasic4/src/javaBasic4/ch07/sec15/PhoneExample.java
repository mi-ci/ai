package javaBasic4.ch07.sec15;

public class PhoneExample {

	public static void main(String[] args) {
		Play p = new Play();
		SmartPhone s = new SmartPhone();
		iPhone i = new iPhone();
//		Phone phone = new Phone(); // �߻�Ŭ������ ��üȭ�� ������ �ƴ϶� �ڽĵ����� ������ �������̵� ��Ű������ �����
		p.play(s);
		p.play(i);
		p.stop(s);
		p.stop(i );
		System.out.println(i instanceof Phone);
		
	}

}
