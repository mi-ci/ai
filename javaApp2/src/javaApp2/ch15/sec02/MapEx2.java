package javaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class MapEx2 {

	public static void main(String[] args) {
		Map<Integer, String> map = new HashMap<Integer, String>();
		
		map.put(1, "�̼���");
		map.put(2, "�ڼ���");
		map.put(3, "ȫ�浿");
		map.put(3, "ȫ�浿1");
		map.put(3, "ȫ�浿2");
		
		Map<String, String> map2 = new HashMap<String, String>();
		map2.put("ȫ�浿", "����");
		map2.put("�̼���", "����");
		map2.put("�ְ��", "���");
		map2.put("ȫ�浿", "����");
		map2.remove("�ְ��");
		System.out.println(map.get(1));
		System.out.println(map2.get("ȫ�浿"));
		
//		for (String string : map2.keySet()) {
//			System.out.println(map2.get(string));
//		}
		
		Iterator<Integer> it = map.keySet().iterator();
		while(it.hasNext()) {
			System.out.print(map.get(it.next())+"#### ");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
