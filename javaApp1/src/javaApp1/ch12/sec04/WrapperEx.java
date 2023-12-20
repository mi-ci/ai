package javaApp1.ch12.sec04;

public class WrapperEx {

	public static void main(String[] args) {
		//기본형은 클래스가 아니므로 미리 만들어진 메소드가 없다. 그래서 기본형 자료를 클래스로 만들어 둔게 있다. Wrapper 클래스
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
