package javaBasic5.ch08.sec02;

public class SmartPhone implements RemoteControl {
	private int volume;
	
	@Override
	public void turnOn() {
		System.out.println("핸드폰을 켭니다");
	}

	@Override
	public void turnOff() {
		System.out.println("핸드폰을 끕니다");
		deaultM();
	}

	@Override
	public void setVolume(int volume) {

		if(volume>10) {
			this.volume=MAX_VOLUME;
		}
		else if(volume<0) {
			this.volume=MIN_VOLUME;
		}
		else {
			this.volume = volume;
		}
		System.out.println("현재 핸드폰의 볼륨은 " + this.volume);
	}

}
