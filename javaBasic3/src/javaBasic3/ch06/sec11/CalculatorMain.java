package javaBasic3.ch06.sec11;

public class CalculatorMain {

	public static void main(String[] args) {
		Calculator cal = new Calculator();
		cal.powerOn();
		cal.powerOff();
		
		System.out.println(cal.plus(1, 20));
		System.out.println(cal.plus(-50, -100));
		System.out.println(cal.plus(100, 200, 300));
		
		
	}

}
