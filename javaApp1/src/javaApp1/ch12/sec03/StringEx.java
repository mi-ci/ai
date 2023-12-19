package javaApp1.ch12.sec03;

import java.util.Arrays;

public class StringEx {

	public static void main(String[] args) {
		String data = "자바";
		System.out.println(data.hashCode());
		byte[] arr1 = data.getBytes();
		System.out.println(arr1.length); //한글의 한글자는 2바이트 차지
		
		String a = Arrays.toString(arr1);
		System.out.println(a);
		
		
		data = data + "java";
		System.out.println(data.hashCode());
		System.out.println(data);
		
		StringBuilder sb = new StringBuilder();
		sb.append("자바");
		System.out.println(sb);
		System.out.println(sb.hashCode());
		sb.append("java");
		System.out.println(sb);
		System.out.println(sb.hashCode());
		sb.insert(0, "a");
		System.out.println(sb);
		sb.delete(1, 3);
		System.out.println(sb);
		
		
		
		
	}

}
