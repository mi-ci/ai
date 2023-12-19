package javaApp1.ch12.sec02;

import java.io.IOException;

public class SystemEx {

	public static void main(String[] args) throws IOException {
		System.err.println("에러 부분 출력 빨간색으로");
		System.out.println(System.getProperty("java.home"));
		System.out.println(System.currentTimeMillis());
		System.out.println(System.nanoTime());
		int aa = System.in.read();
		System.out.println(aa);
		System.exit(0);
	}

}
