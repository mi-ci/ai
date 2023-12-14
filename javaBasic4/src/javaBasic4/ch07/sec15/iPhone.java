package javaBasic4.ch07.sec15;

public class iPhone extends Phone {

	@Override
	public void turnOn() {
		System.out.println("아이폰을 킵니다");
	}

	@Override
	public void turnOff() {
		System.out.println("아이폰을 끕니다");
	}

}
