package javaBasic4.ch07.sec02;

public class Student extends Person {
	String dept;
	
	public Student() {
		System.out.println("�θ� Ŭ���� �ƹ��� Ŭ�����Դϴ�");
	}
	
	public Student(String �̸�, int ����, String ����) {
		name = �̸�;
		age = ����;
		dept = ����;
		System.out.println("�θ� Ŭ���� �ƹ��� Ŭ����");
	}
	
	public void study() {
		System.out.println("�����Ѵ�");
	}
}
