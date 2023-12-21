package javaApp2;

import java.util.Vector;

public class VectorEx {

	public static void main(String[] args) {
		// 스레드 여러개의 cpu를 사용하면서 멀티프로그래밍하는 것
		// Vector 컬렉션은 스레드의 자료를 담기위한 구조
		// 이용분야 : 스레드로 멀티프로그래밍할 때 순서가 있고 중복저장할 수 있는 자료구조
		
		Vector<Double> d = new Vector<Double>();
		d.add(10.4);
		d.add(8.8);
		d.add(9.4);
		d.add(3.7);
		d.add(2, 7.9);
		
		System.out.println(d.contains(3.7));
		d.remove(10.4);
		
		for (Double double1 : d) {
			System.out.println(double1);
		}

	}

}



