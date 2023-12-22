package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class MapEx2 {

	public static void main(String[] args) {
		Map<Integer, String> map = new HashMap<Integer, String>();
		
		map.put(1, "이순신");
		map.put(2, "박수연");
		map.put(3, "홍길동");
		map.put(3, "홍길동1");
		map.put(3, "홍길동2");
		
		Map<String, String> map2 = new HashMap<String, String>();
		map2.put("홍길동", "부장");
		map2.put("이순신", "부장");
		map2.put("최경미", "사원");
		map2.put("홍길동", "사장");
		map2.remove("최경미");
		System.out.println(map.get(1));
		System.out.println(map2.get("홍길동"));
		
//		for (String string : map2.keySet()) {
//			System.out.println(map2.get(string));
//		}
		
		Iterator<Integer> it = map.keySet().iterator();
		while(it.hasNext()) {
			System.out.print(map.get(it.next())+"#### ");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
