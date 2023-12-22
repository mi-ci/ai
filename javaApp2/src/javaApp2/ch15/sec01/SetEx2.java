package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		Set<String> set = new HashSet<String>();
		
		set.add("사과");
		set.add("배");
		set.add("귤");
		set.add("바나나");
		set.add("사과");
		set.add("배");
		
		System.out.println(set.size());
		System.out.println(set.contains("메론"));
		
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
