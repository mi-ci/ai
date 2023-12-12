package javaBasic4.ch07.sec05;

public class SnowTireExample {

	public static void main(String[] args) {
		SnowTire s = new SnowTire(); // ´ÙÇü¼º
		Tire t = s;
		
		s.run();
		t.run();
	}

}
