package javaBasic5.ch08.sec02;

public interface RemoteControl {
	int MAX_VOLUME = 10; // 인터페이스는 상수 밖에 못들어옴
	int MIN_VOLUME = 0;
	
	void turnOn();
	void turnOff();
	void setVolume(int volume);
	
	static void qrRead() {
		System.out.println("카카오톡 인증받기");
	}
	
	private int privateM(int i) {
		return i+10;
	}
	
	
	default void deaultM() {
		System.out.println("QR코드 입력 받기");
		int sum = 0;
		for (int i = 0; i < 10; i++) {
			sum = sum + privateM(i);
		}
		System.out.println(sum);
	}
	
	//디폴트메소드
	//정적메소드
	//private 메소드
}
