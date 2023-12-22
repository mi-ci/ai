package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		Set<String> set = new HashSet<String>();
		
		set.add("���");
		set.add("��");
		set.add("��");
		set.add("�ٳ���");
		set.add("���");
		set.add("��");
		
		System.out.println(set.size());
		System.out.println(set.contains("�޷�"));
		
//		for (String string : set) {
//			System.out.println(string);
//		}
		
		Iterator<String> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		set.clear();
		System.out.println(set.size());
	}

}
