package javaApp1.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx {

	public static void main(String[] args) {
		
		Person p1 = new Person("È«±æµ¿", 45);
		Person p2 = new Person("±èÀÚ¹Ù", 25);
		Person p3 = new Person("¹ÚÁö¿ø", 31);
		
		TreeSet<Person> t = new TreeSet<Person>();
		t.add(p1);
		t.add(p2);
		t.add(p3);
		for (Person person : t) {
			System.out.println(person);
		}
	}

}

class Person implements Comparable<Person> {
	String name;
	Integer age;
	
	public Person(String name, Integer age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	@Override
	public String toString() {
		return name + " " + age;
	}
	
//	@Override
//	public int compareTo(Person o) {
//		if (name.equals(o.name)){
//			return 0;
//		}
//		else {
//			return name.compareTo(o.name);
//		}
//	}
	
	@Override
	public int compareTo(Person o) {
		if (age == o.age) {
			return 0;
		}
		else if (age<o.age){
			return -1;
		}
		else {
			return 1;
		}
	}

	
	
}