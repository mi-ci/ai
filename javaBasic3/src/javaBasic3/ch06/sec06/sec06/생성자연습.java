package javaBasic3.ch06.sec06.sec06;

public class 생성자연습 {

	//생성자가 하나도 없으면 자바 컴파일러가 자동으로 1개 만듬
	
	String name;
	int Score;
	
		
	public 생성자연습(String name) {
		this.name = name;
		
	}
	public 생성자연습() {
		this(5,false); //다른 생성자 호출, 첫줄에서만 사용
	}
	public 생성자연습(int i, boolean b) {}
	public 생성자연습(boolean b, int i) {}
	
	
}
