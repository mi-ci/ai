package javaBasic6.ch09.sec05;

public class AnyEx2 {

	public static void main(String[] args) {
		
		CImpl ci = new CImpl();
		ci.cM();
		
		C ci2 = new CImpl() {
			@Override
			public void cM() {
				System.out.println("hi");
			}
		};
		ci2.cM();
		
		C ci3 = new C() {
			// �͸�Ŭ���� �ڿ��� �����ݷ��� �پ�����
			@Override
			public void cM() {
				System.out.println("�͸���Ŭ������ �޼ҵ�");
			}
			
		};
		ci3.cM();
		
	}

}
//�������̽��� new �� �� ����
interface C{
	//�߻�޼ҵ常 �ܶ� ���ΰ� : {} �ȿ� �� ���೻�� �ʿ���� �߻��̴ϱ�
	abstract void cM();
	
}

class CImpl implements C{
	@Override
	public void cM() {
		System.out.println(" ����Ŭ���� ");
	}
}