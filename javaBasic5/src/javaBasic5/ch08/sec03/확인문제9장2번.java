package javaBasic5.ch08.sec03;

public class Ȯ�ι���9��2�� {

	public static void main(String[] args) {
		A e = new E();
		Driver d = new Driver();
		d.method(new B());
	}

}

class Driver{
	void method(A a) {
		
	}
}

interface A{
	
}

class B implements A{
	
}

class C implements A{
	
}

class D extends B{
	
}

class E extends C{
	
}
