package javaBasic5.ch08.sec02;

public class RemoteControlExample {

	public static void main(String[] args) {
		RemoteControl rc;
		rc = new Television();
		rc.turnOn();
		rc.setVolume(-15);
		rc.turnOff();
		rc = new SmartPhone();
		rc.turnOn();
		rc.setVolume(15);
		rc.turnOff();
		rc.deaultM();
		RemoteControl.qrRead();
		
	}

}
