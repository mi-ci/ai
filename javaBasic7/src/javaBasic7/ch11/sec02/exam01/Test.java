package javaBasic7.ch11.sec02.exam01;

public class Test {
	public static void main(String[] args) {
		int num[] = {2,1,3,7,4,9};
		int numb[] = new int[10];
		for (int j = 0; j < num.length; j++) {
			numb[j] = num[j];
		}
		for (int j2 = 0; j2 < numb.length; j2++) {
			System.out.printf("%d,",numb[j2]);
		}
	}
}
