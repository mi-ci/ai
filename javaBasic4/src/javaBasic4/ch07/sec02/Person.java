package javaBasic4.ch07.sec02;

public class Person {
	String name;
	int age;
	
	public Person() {
		System.out.println("���� �ҸӴ� �θ� Ŭ�����Դϴ�");
	}
	
	public Person(String string, int i) {
		name = string;
		age = i;
	}

	public void eat() {
		System.out.println("�Դ´�");
		
	}
	
	public void sleep() {
		System.out.println("�ܴ�");
	}
}
