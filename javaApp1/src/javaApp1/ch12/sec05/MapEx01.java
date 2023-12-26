package javaApp1.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class MapEx01 {

	public static void main(String[] args) {
		HashMap<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "ȫ�浿1");
		map.put(2, "ȫ�浿2");
		map.put(3, "ȫ�浿3");
		map.put(4, "ȫ�浿4");
		System.out.println(map.size());
		System.out.println(map.containsKey(3));
		System.out.println(map.containsValue("ȫ�浿5"));
		System.out.println(map.get(1));
		System.out.println(map.get(2));
		System.out.println(map.get(3));
		map.remove(4);
		System.out.println(map.keySet());
		Set<Integer> keys = map.keySet();
		Iterator<Integer> it = keys.iterator();
		while(it.hasNext()) {
			System.out.println(map.get(it.next()));
		}
		
		Set<Entry<Integer, String>> entry = map.entrySet();
		Iterator<Entry<Integer, String>> it2 = entry.iterator();
		while(it2.hasNext()) {
			Entry<Integer, String> a = it2.next();
			Integer key = a.getKey();
//			System.out.println();
			System.out.println(a.getValue());
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
