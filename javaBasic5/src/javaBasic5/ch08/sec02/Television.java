package javaBasic5.ch08.sec02;

public class Television implements RemoteControl {
	private int volume;
	
	@Override
	public void turnOn() {
		System.out.println("TV�� �մϴ�");
	}

	@Override
	public void turnOff() {
		System.out.println("TV�� ���ϴ�");
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
		System.out.println("���� TV�� ������ " + this.volume);
	}
	
}
