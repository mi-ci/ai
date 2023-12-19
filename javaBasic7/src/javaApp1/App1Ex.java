package javaApp1;

import java.lang.module.ModuleDescriptor;
import java.text.DateFormat;
import java.util.Date;
import java.util.Scanner;
import java.util.StringTokenizer;

public class App1Ex {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String a = "2023/12/19";
		int aHashCode = a.hashCode();
		System.out.println(aHashCode);
		double pi = Math.PI;
		System.out.println(pi);
		
		double e = Math.E;
		System.out.println(e);
		double cos = Math.cos(45.0);
		System.out.println(cos);
		
		Date date = new Date();
		System.out.println(date.getDate());
		System.out.println(date.getTime());
		long parse = date.parse(a);
		System.out.println(parse);
//		DateFormat dateformat = new DateFormat();
//		date parse2 = dateformat.parse(a);
		
		
//		장우진.취미 장우진.나이 장우진.사는곳  <- .쩜 뒤에가 명령어
		StringTokenizer st = new StringTokenizer("ab/cd/ef", "/");
		while(st.hasMoreTokens()) {
			System.out.println(st.nextToken());
		}
		int b = st.countTokens();
		System.out.println(b);
		
//		ModuleDescriptor.
		
	}

}
