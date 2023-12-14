package javaBasic5.ch08.sec02;

public class SmartPhone implements RemoteControl {
	private int volume;
	
	@Override
	public void turnOn() {
		System.out.println("�ڵ����� �մϴ�");
	}

	@Override
	public void turnOff() {
		System.out.println("�ڵ����� ���ϴ�");
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
		System.out.println("���� �ڵ����� ������ " + this.volume);
	}

}
