package javaBasic5.ch08.sec05;

public class Example {
	
	public static void action(A a) {
//		a.method1();
		if(a instanceof C) {
			C c = (C) a; //<=강제 형변환
			System.out.println("+++");
			c.method2();
		}
	}
	public static void main(String[] args) {
		action(new B());
		action(new C());
//		A b = new B();
//		C cc = (C) b;
//		cc.method1();
	}

}

interface A{
	public void method1();
}

class B implements A{

	@Override
	public void method1() {
		System.out.println("B-method1()");
	}
	
}

class C implements A{

	@Override
	public void method1() {
		System.out.println("C-method1()");
	}
	
	public void method2() {
		System.out.println("C-method2()");
	}
}