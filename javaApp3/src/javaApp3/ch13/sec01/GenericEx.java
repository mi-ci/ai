package javaApp3.ch13.sec01;

public class GenericEx {

	public static void main(String[] args) {
		Box<Integer> intBox = new Box<Integer>();
		intBox.content = 100;
		
		Box<String> strBox = new Box<String>();
		strBox.content = "홍길동";
		
		BoxChild<Integer, String> bc = new BoxChild<Integer, String>();
		bc.content = 10;
		bc.kind = "aaa";
		
		InterImple<Double> ii = new InterImple<Double>();
		InterImple<Boolean> ii2 = new InterImple<Boolean>();
	}

}

class Box<T> {	
	T content; // 내용을 담을 변수 정수, 문자열, 객체 .....
}


class BoxChild<T, K> extends Box<T> {
	K kind;
}

interface Inter<A> {
	A method1();
}

class InterImple<A> implements Inter<A> {

	@Override
	public A method1() {
		return null;
	}
	
}





