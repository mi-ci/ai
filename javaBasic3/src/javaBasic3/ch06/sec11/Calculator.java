package javaBasic3.ch06.sec11;

public class Calculator {
	void powerOn() {
		System.out.println("전원을 킵니다");
	}
	void powerOff() {
		System.out.println("전원을 끕니다");
	}
	
	int plus(int x, int y) {
		int result = x+y;
		return result;
	}
	
	double divide(int x, int y) {
		double result = (double) x/y;
		return result;
	}
	int plus(int i, int j, int k) {
		int result = i+j+k;
		return result;
	}
	
	
}
