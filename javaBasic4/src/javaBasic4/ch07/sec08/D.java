package javaBasic4.ch07.sec08;

import javaBasic4.ch07.sec07.A;

public class D extends A {

	public D() {
		super();
	}
	
	public void method1() {
		this.field = "value";
		this.method(); // 직접 개체 생성은 못하고 this를 통해 사용 할 수 있음
	}
	
//	public void method() {
//		A a = new A();
//		a.field = "value";
//		a.method();
//	}
}
