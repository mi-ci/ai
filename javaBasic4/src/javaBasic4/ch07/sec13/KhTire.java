package javaBasic4.ch07.sec13;

public class KhTire extends Tire{
	@Override
	public void roll() {
		System.out.print("��ȣŸ�̾");
		super.roll();
		System.out.println("MongoDB�� �����մϴ�");
	}
}
