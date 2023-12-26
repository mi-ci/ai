package javaApp1.ch12.sec06;

import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;
import java.util.TreeSet;

public class TreeSetEx {

	public static void main(String[] args) {
		TreeSet<Integer> t1 = new TreeSet<Integer>();
		t1.add(87);
		t1.add(98);
		t1.add(75);
		t1.add(95);
		t1.add(80);
		t1.add(80);
		t1.add(80);
		
//		System.out.println(t1.size());
////		System.out.println(t1);
//		Iterator<Integer> it = t1.iterator();
//		while(it.hasNext()){
//			System.out.println(it.next());
//		}
		
//		System.out.println(t1.first());
//		System.out.println(t1.lower(95));
//		System.out.println(t1.higher(95));
//		System.out.println(t1.floor(95));
//		System.out.println(t1.ceiling(95));
//		System.out.println(t1.descendingSet());
//		NavigableSet<Integer> ds = t1.descendingSet();
//		for (Integer integer : ds) {
//			System.out.println(integer);
//		}
		SortedSet<Integer> s8090 = t1.subSet(80,true, 90,true);
		for (Integer integer : s8090) {
			System.out.println(integer);
		}
		
		
		
	}

}
