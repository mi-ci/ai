package javaApp3.ch13.sec01;

public class GenericEx01 {

	public static void main(String[] args) {
		boolean result = compare(10,20);
		System.out.println(result);
	}
	
	public static <X extends Number> boolean compare(X t1, X t2) {
		System.out.println("compare(" + t1.getClass().getSimpleName() + "," + t2.getClass().getSimpleName()+")");
		
		double v1 = t1.doubleValue();
		double v2 = t2.doubleValue();
		
		return v1==v2;
	}
//상속일때 물음표
}


