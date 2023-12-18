package javaBasic6.ch09.sec04;

public class OutterExample {

	public static void main(String[] args) {
		Outter outter = new Outter();
		Outter.Inner inner = outter.new Inner();
		inner.iam();
		System.out.println(Outter.sa);
	}

}

class Outter{
	int a = 10;
	void aM() {}
	static int sa = 20;
	static void saM() {}
	
	
	class Inner{
		int ia = 100;
		void iam() {
			ia = ia + 20;
			a = a + 20;
			aM();
			Outter.sa = Outter.sa + 100;
			Outter.saM();
		}
	}
}
