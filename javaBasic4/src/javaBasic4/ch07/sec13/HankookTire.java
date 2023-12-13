package javaBasic4.ch07.sec13;

public class HankookTire extends Tire{
	@Override
	public void roll() {
		System.out.print("한국타이어가");
		super.roll();
		System.out.println("MySQL 프로그램으로 데이터베이스 연결합니다");
	}

}
