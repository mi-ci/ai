package javaBasic6.ch09.sec03;

//정보보호 정보은닉 메모리관리 용이
public class LocalExample {

	public static void main(String[] args) {
		LocalExample le = new LocalExample();
		le.localM();
	}
	
	public void localM() {
		int a = 10;
		
		class AAA{
			int sa = 100;
			void m() {
				System.out.println("메소드 안에 있는 클래스의 메소드");
			}
		}
		
		AAA aaa = new AAA();
		aaa.m();
		
	}

}
