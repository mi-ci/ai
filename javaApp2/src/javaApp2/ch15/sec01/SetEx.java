package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
//		Set 특징 : 중복된 요소를 제거한다. 중복저장되지 않는다.
		Set<Integer> set = new HashSet<Integer>();
		
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);
		set.add(100);
		set.remove(80);
		
		System.out.println(set.size());
		for (Integer integer : set) {
			System.out.println(integer);
		}
		
		System.out.println(set.isEmpty());
		
		
		Iterator<Integer> it = set.iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		
		
		
	}

}
