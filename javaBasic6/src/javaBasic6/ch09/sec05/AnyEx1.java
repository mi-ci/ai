package javaBasic6.ch09.sec05;

public class AnyEx1 {

	public static void main(String[] args) {
		// B클래스의 자식클래스가 필요함. 왜냐면 bM() 재정의해서 사용하려고
		
		B b = new B();
		b.bM();
		
		B bb = new B() {
			// 이름 없는 자식 클래스 = 익명 자식 클래스
			int b = 20;
			@Override
			void bM() {
				System.out.println("자식메소드" + b);
			}
		};
		
		bb.bM();
		// 부모클래스를 new하고 바로 뒤에 {}을 써서 자식의 클래스의 내용을 써 주는 것
	}

}

class B{
	void bM() {
		System.out.println("부모메소드");
	}
}