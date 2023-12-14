package javaBasic4.ch07.sec15;

public class PhoneExample {

	public static void main(String[] args) {
		Play p = new Play();
		SmartPhone s = new SmartPhone();
		iPhone i = new iPhone();
//		Phone phone = new Phone(); // 추상클래스는 객체화가 목적이 아니라 자식들한테 강제로 오버라이딩 시키기위해 만든것
		p.play(s);
		p.play(i);
		p.stop(s);
		p.stop(i );
		System.out.println(i instanceof Phone);
		
	}

}
