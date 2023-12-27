package javaApp3.ch13.sec01;

public class GenericEx02 {
	public static void main(String[] args) {
		
	}
}

class Person {
	
}

class Worker extends Person {
	
}

class Student extends Person {
	
}

class HighStudent extends Student{
	
}

class MiddleStudent extends Student{
	
}

class Applicant<T>{
	public T kind;

	public Applicant(T kind) {
		super();
		this.kind = kind;
	}
}

class Course{
	public static void registerCourse1(Applicant<? extends Student> applicant) {
		System.out.println(applicant.getClass().getSimpleName());
	}
}




