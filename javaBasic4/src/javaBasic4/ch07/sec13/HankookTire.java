package javaBasic4.ch07.sec13;

public class HankookTire extends Tire{
	@Override
	public void roll() {
		System.out.print("�ѱ�Ÿ�̾");
		super.roll();
		System.out.println("MySQL ���α׷����� �����ͺ��̽� �����մϴ�");
	}

}
