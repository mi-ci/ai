package javaBasic4.ch07.sec11;

public class Promotion3Ex {

	public static void main(String[] args) {
		A a = new A();
		a.eat();
		
		System.out.println("------------");
		A b = new B();
		B b1 = new B();
		b.eat();
		b1.eat();
		
		System.out.println("------------");
		BB bb = new BB();
		bb.eat();		
	}
}

class A{
	void eat() {
		System.out.println("¹ä");
	}
}

class B extends A{
	@Override
	void eat() {
		System.out.println("¶±ººÀÌ");
	}
}

class BB extends A{
	@Override
	void eat() {
		System.out.println("ÇÜ¹ö°Å");
	}
}

class C extends B{
	@Override
	void eat() {
		System.out.println("ÇÇÀÚ");
	}
}

