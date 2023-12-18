package javaBasic6.ch09.sec05;

public class AnyEx {

	public static void main(String[] args) {
		AA aa = new AA();
		aa.iaM();
		
		A a = new A() {
			@Override
			void iaM() {
				super.iaM();
			}
		};
		a.iaM();
	}

}
class A {
	void iaM() {
		System.out.println("부모클래스");
	}
	
}

class AA extends A{
	@Override
	void iaM() {
		System.out.println("자식클래스");
	}
}