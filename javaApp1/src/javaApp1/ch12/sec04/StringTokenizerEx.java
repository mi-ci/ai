package javaApp1.ch12.sec04;

import java.util.StringTokenizer;

public class StringTokenizerEx {

	public static void main(String[] args) {
//		String data1 = "ȫ�浿&�̼�ȫ,�ڿ���";
//		String[] arr = data1.split("&|,");
//		
//		for (String i : arr) {
//			System.out.println(i);
//		}
//		String data2 = "ȫ�浿/�̼�ȫ/�ڿ���/�̼���/�ּ���";
//		StringTokenizer a = new StringTokenizer(data2, "/");
//		while(a.hasMoreTokens()) {
//			System.out.println(a.nextToken());
//		}
//		String data3 = "���-��-��-�ٳ���-����";
//		String[] a = data3.split("-");
//		for (String string : a) {
//			System.out.println(string);
//		}
		String data4 = "�ڹ�*+���̽�*+����Ŭ*+�ټ��÷ξ�";
		String[] b = data4.split("\\*+");
		for (String string : b) {
			System.out.println(string);
		}
		

	}

}
