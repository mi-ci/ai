package javaBasic4.ch07.sec02;

public class Person {
	String name;
	int age;
	
	public Person() {
		System.out.println("조상 할머니 부모 클래스입니다");
	}
	
	public Person(String string, int i) {
		name = string;
		age = i;
	}

	public void eat() {
		System.out.println("먹는다");
		
	}
	
	public void sleep() {
		System.out.println("잔다");
	}
}
