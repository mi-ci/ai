package javaBasic5.ch08.sec02;

public interface RemoteControl {
	int MAX_VOLUME = 10; // �������̽��� ��� �ۿ� ������
	int MIN_VOLUME = 0;
	
	void turnOn();
	void turnOff();
	void setVolume(int volume);
	
	static void qrRead() {
		System.out.println("īī���� �����ޱ�");
	}
	
	private int privateM(int i) {
		return i+10;
	}
	
	
	default void deaultM() {
		System.out.println("QR�ڵ� �Է� �ޱ�");
		int sum = 0;
		for (int i = 0; i < 10; i++) {
			sum = sum + privateM(i);
		}
		System.out.println(sum);
	}
	
	//����Ʈ�޼ҵ�
	//�����޼ҵ�
	//private �޼ҵ�
}
