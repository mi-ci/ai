package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Set;

public class SetEx3 {

	public static void main(String[] args) {
		Member m1 = new Member("ȫ�浿", 25);
		Member m2 = new Member("ȫ�浿2", 30);
		Member m3 = new Member("ȫ�浿3", 35);
		Member m4 = new Member("ȫ�浿2", 30);
		Member m5 = new Member("ȫ�浿", 25);
		
		Set<Member> set = new HashSet<Member>();
		set.add(m1);
		set.add(m2);
		set.add(m3);
		set.add(m4);
		set.add(m5);
		System.out.println(m1 == m5);
		System.out.println(m1.hashCode() == m5.hashCode());
		System.out.println(m1.equals(m5));
		
		for (Member member : set) {
			System.out.println(member.age);
		}
		
		
	}

}

class Member {
	String name;
	int age;
	
	public Member(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	@Override
	public int hashCode() {
		Integer ageI = Integer.valueOf(age);
		return name.hashCode() + ageI.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Member) {
			Member m = (Member) obj;
			if(name.equals(m.name)) {
				return true;
			}
		}
		return false;
	}
	
	
}