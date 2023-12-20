package javaApp1.ch12.sec04;

import java.util.StringTokenizer;

public class StringTokenizerEx {

	public static void main(String[] args) {
//		String data1 = "홍길동&이수홍,박연수";
//		String[] arr = data1.split("&|,");
//		
//		for (String i : arr) {
//			System.out.println(i);
//		}
//		String data2 = "홍길동/이수홍/박연수/이순신/최수진";
//		StringTokenizer a = new StringTokenizer(data2, "/");
//		while(a.hasMoreTokens()) {
//			System.out.println(a.nextToken());
//		}
//		String data3 = "사과-배-귤-바나나-포도";
//		String[] a = data3.split("-");
//		for (String string : a) {
//			System.out.println(string);
//		}
		String data4 = "자바*+파이썬*+오라클*+텐서플로어";
		String[] b = data4.split("\\*+");
		for (String string : b) {
			System.out.println(string);
		}
		

	}

}
