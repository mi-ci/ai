package javaBasic4.ch07.sec07;

public class Person { //final이 붙으면 부모가 될 수 없다
	
	String name;
	int age;
	final static int max = 100;
	
	public void eat() {
		System.out.println("밥을 먹는다");
//		max=max-50; 필드에 final 붙으면 더 이상 수정안됨 상수처리할때 static도 같이
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
