package javaApp1.ch12.sec04;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateExample {

	public static void main(String[] args) {
		Date now = new Date();
		String a = now.toString();
		String[] b = a.split(" ");
//		for (String string : b) {
//			System.out.println(string);
//		}
		System.out.println(b[5]);
		
//		System.out.println(now);
//		
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
//		System.out.println(sdf.format(now));
	}

}
