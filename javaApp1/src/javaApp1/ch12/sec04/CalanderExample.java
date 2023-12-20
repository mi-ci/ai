package javaApp1.ch12.sec04;

import java.util.Calendar;

public class CalanderExample {
	public static void main(String[] args) {
		Calendar c = Calendar.getInstance();
		int a = c.get(Calendar.MONTH);
		System.out.println(a);
	}
}

