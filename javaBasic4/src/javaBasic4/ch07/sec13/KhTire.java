package javaBasic4.ch07.sec13;

public class KhTire extends Tire{
	@Override
	public void roll() {
		System.out.print("금호타이어가");
		super.roll();
		System.out.println("MongoDB로 연결합니다");
	}
}
