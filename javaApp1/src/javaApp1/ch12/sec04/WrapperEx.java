package javaApp1.ch12.sec04;

public class WrapperEx {

	public static void main(String[] args) {
		//�⺻���� Ŭ������ �ƴϹǷ� �̸� ������� �޼ҵ尡 ����. �׷��� �⺻�� �ڷḦ Ŭ������ ����� �а� �ִ�. Wrapper Ŭ����
		Integer a = 10;
		Integer a1 = new Integer(10);
		String b = a1.toString();
		System.out.println(b);
//		double d = a.doubleValue();
//		System.out.println(d);
		System.out.println(a.SIZE);
//		Double d = 3.14;
//		String ds = d.toString();
//		System.out.println(d.MAX_VALUE);
		Double d = 10.1;
		Double d1 = 5.4;
		System.out.println(d.max(d, d1));
	}

}
