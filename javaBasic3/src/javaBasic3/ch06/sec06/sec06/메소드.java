package javaBasic3.ch06.sec06.sec06;

public class 메소드 {
	
	static int a = 10; //정적 필드
	static void sm1() {
		
	}
	
	public 메소드 () { 
	//b=20; //인스턴수 변수의 값을 초기값으로 넣을 수 있다.
	}
	
	static {
		//정적 블로 
		//b=200; static을 먼저 처리하므로 변수선언이 없는 200이라는 변수가 없음 
	}
	
	//상수
	static final double PI =3.14;
	
	
	void m1() {}     	//리턴 값 없음

	int m2() {			//리턴 값 있으면 return 상용
		return 0;
	}
	
	double m3(int ... values) {
		return 0.0;}
		
	double sum(int ... values) {
		return 0.0;}

	String sum(String ... values) {
		return null;}
		
		
	}
	

