package javaApp2;

import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
//		int[] iarr = {1,2};
//		for (int i : iarr) {
//			System.out.println(i);
//		}
		
//		ArrayList<Integer> arrList = new ArrayList<Integer>();
//		
//		arrList.add(1);
//		arrList.add(2);
//		arrList.add(3);
//		arrList.add(4);
//		arrList.add(0, -7);
////		System.out.println(arrList.size());
//		for (int i = 0; i < arrList.size(); i++) {
//			System.out.println(arrList.get(i));
//		}
		
		ArrayList<String> s = new ArrayList<String>();
		
		s.add("사과");
		s.add("배");
		s.add("귤");
		s.add("바나나");
		s.add(3, "파인애플");
		s.add(1, "메론");
		s.add("사과");
		s.add("사과");
		
		s.set(3, "천혜향");
		s.remove("바나나");
		s.remove("파인애플");
		
		for (int i = 0; i < s.size(); i++) {
			System.out.print(s.get(i) + " ");
		}
		System.out.println();
		
		//파인애플이 있습니까?
//		if(s.contains("사과")&&s.contains("배")) {
//			System.out.println("있어요");
//		}
//		else {
//			System.out.println("없어요");
//		}
		
		// 가게에 물건이 모두 없나요?
		if(s.isEmpty()) {
			System.out.println("다 팔렸어요");
		}
		else {
			s.removeAll(s);
		}
		
		if(s.isEmpty()) {
			System.out.println("다 팔렸어요");
		}
		else {
			s.removeAll(s);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
