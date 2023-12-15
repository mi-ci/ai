package javaBasic6.ch09.sec01;

public class AExample {

	public static void main(String[] args) {
		A a = new A();
//		a.aM();
//		A.sa = 2000;
//		A.saM();
//		System.out.println(a.b);
//		A.B b = a.new B();
//		ab.b = 300;
//		System.out.println(ab.b);
	}

}

class A{
	
	int a = 10;
	void aM() {
		System.out.println(a);
	}
	
	static int sa = 200;
	static void saM() {
		System.out.println(sa);
	};
	
	class B{
		int b = 20;
		void bM() {
			a= a + 100;
			aM();
			System.out.println(b);
		}
//		static int sb = 200;
		class C{
			
		}
	}
}