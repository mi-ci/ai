package javaBasic4.ch07.sec07;

public class Person { //final�� ������ �θ� �� �� ����
	
	String name;
	int age;
	final static int max = 100;
	
	public void eat() {
		System.out.println("���� �Դ´�");
//		max=max-50; �ʵ忡 final ������ �� �̻� �����ȵ� ���ó���Ҷ� static�� ����
	}
	
	public Person() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	

}
