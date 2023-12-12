package javaBasic4.ch07.sec02;

public class Student extends Person {
	String dept;
	
	public Student() {
		System.out.println("부모 클래스 아버지 클래스입니다");
	}
	
	public Student(String 이름, int 나이, String 전공) {
		name = 이름;
		age = 나이;
		dept = 전공;
		System.out.println("부모 클래스 아버지 클래스");
	}
	
	public void study() {
		System.out.println("공부한다");
	}
}
