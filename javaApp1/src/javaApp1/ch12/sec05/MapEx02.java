package javaApp1.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class MapEx02 {

	public static void main(String[] args) {
		Member m1 = new Member("a100", 123);
		Member m2 = new Member("a200", 234);
		Member m3 = new Member("a300", 345);
		
//		HashMap<Integer, Member> a = new HashMap<Integer, Member>();
//		a.put(1,m1);
//		a.put(2,m2);
//		a.put(3,m3);
//		System.out.println(a.get(3));
//		System.out.println(a.keySet());
//		
//		Set<Integer> keys = a.keySet();
//		Iterator<Integer> it = keys.iterator();
//		while(it.hasNext()) {
////			System.out.println(it.next());
//			System.out.println(a.get(it.next()));
//		}
		
		HashMap<Member, Integer> map = new HashMap<Member, Integer>();
		map.put(m1, m1.pwd);
		map.put(m2, m2.pwd);
		map.put(m3, m3.pwd);
		
		Member m4 = new Member("a300", 345);
		map.put(m4, m4.pwd);
		
		Member m5 = new Member("a300", 345);
		map.put(m5, m5.pwd);
		
		System.out.println(map.size());
		System.out.println(map);
//		System.out.println(map.get(m1.id));
//		System.out.println(map.keySet());
//		
//		Set<String> keys = map.keySet();
//		Iterator<String> it = keys.iterator();
//		while(it.hasNext()) {
//			System.out.println(map.get(it.next()));
//		}
		
	}

}

class Member{
	String id;
	Integer pwd;
	
	public Member(String id, Integer pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	@Override
	public String toString() {
		return id + " " + pwd;
	}
	
	@Override
	public int hashCode() {
		return id.hashCode()+pwd.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Member) {
			Member m = (Member) obj;
			return id == m.id && pwd == m.pwd;
		}
		return false;
	}
	
}