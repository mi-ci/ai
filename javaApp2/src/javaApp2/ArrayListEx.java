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
		
		s.add("���");
		s.add("��");
		s.add("��");
		s.add("�ٳ���");
		s.add(3, "���ξ���");
		s.add(1, "�޷�");
		s.add("���");
		s.add("���");
		
		s.set(3, "õ����");
		s.remove("�ٳ���");
		s.remove("���ξ���");
		
		for (int i = 0; i < s.size(); i++) {
			System.out.print(s.get(i) + " ");
		}
		System.out.println();
		
		//���ξ����� �ֽ��ϱ�?
//		if(s.contains("���")&&s.contains("��")) {
//			System.out.println("�־��");
//		}
//		else {
//			System.out.println("�����");
//		}
		
		// ���Կ� ������ ��� ������?
		if(s.isEmpty()) {
			System.out.println("�� �ȷȾ��");
		}
		else {
			s.removeAll(s);
		}
		
		if(s.isEmpty()) {
			System.out.println("�� �ȷȾ��");
		}
		else {
			s.removeAll(s);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
