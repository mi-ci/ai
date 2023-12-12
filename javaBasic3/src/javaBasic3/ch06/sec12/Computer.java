package javaBasic3.ch06.sec12;

public class Computer {
	
	static int a =0;
	
	int plus(int ... values) {
		int PlusA = 0;
		for (int i = 0; i < values.length; i++) {
			PlusA = PlusA + values[i];
		}
		return PlusA;
	}
	
	double avg(double...values) {
		double sum = 0;
		for (int i = 0; i < values.length; i++) {
			sum = sum + values[i];
		}
		return sum/values.length;
	}


}
