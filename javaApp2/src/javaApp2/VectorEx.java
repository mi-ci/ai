package javaApp2;

import java.util.Vector;

public class VectorEx {

	public static void main(String[] args) {
		// ������ �������� cpu�� ����ϸ鼭 ��Ƽ���α׷����ϴ� ��
		// Vector �÷����� �������� �ڷḦ ������� ����
		// �̿�о� : ������� ��Ƽ���α׷����� �� ������ �ְ� �ߺ������� �� �ִ� �ڷᱸ��
		
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



