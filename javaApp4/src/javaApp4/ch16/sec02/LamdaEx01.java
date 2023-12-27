package javaApp4.ch16.sec02;

public class LamdaEx01 {

	public static void main(String[] args) {
		A a = new A() {
			@Override
			public int aM(int a, double b) {
				return (int)(a+b);
			}
		};
		
		
		System.out.println(a.aM(10, 10.1));
		
		A a2 = (c, b) -> (int)(c+b);
		
		System.out.println(a2.aM(10, 10.1));
		
		B b = (x, y, z) -> 1;
		
	}

}

// 인터페이스 안에 추상메소드가 1개만 있다라는 성격
@FunctionalInterface
interface A{
	int aM(int a, double b);
//	void a();x
}
@FunctionalInterface
interface B{
	int bM(String x, String y, Boolean z);
}
