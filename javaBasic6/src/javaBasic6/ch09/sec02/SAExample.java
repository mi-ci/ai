package javaBasic6.ch09.sec02;

public class SAExample {

	public static void main(String[] args) {
//		AA a = new AA();
//		System.out.println(a.aa);
//		System.out.println(AA.sa);
//		System.out.println(AA.BB.bb);
		AA.BB b = new AA.BB();
		b.ibbM();
		b.ibbM();
		System.out.println(b.ibb);
	}

}

class AA{
	int aa = 20; // new �ؾ��� ����Ҽ� �ִ� �޼ҵ�
	void aaM() {
		
	}
	static int sa = 10;
	static void saM() {
		
	}
	
	// ����Ŭ��
	static class BB{
		static int bb = 20;
		static void sbbM() {
			
		}
		int ibb = 30;
		void ibbM() {
			ibb = ibb +40;
			bbM();
		}
		
		void bbM() {
			AA.sa = 20;
			AA.saM();	
		}
	}
}