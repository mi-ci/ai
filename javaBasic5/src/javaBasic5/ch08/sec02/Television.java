package javaBasic5.ch08.sec02;

public class Television implements RemoteControl {
	private int volume;
	
	@Override
	public void turnOn() {
		System.out.println("TV¸¦ ÄÕ´Ï´Ù");
	}

	@Override
	public void turnOff() {
		System.out.println("TV¸¦ ²ü´Ï´Ù");
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
		System.out.println("ÇöÀç TVÀÇ º¼·ýÀº " + this.volume);
	}
	
}
