package javaBasic4.ch07.sec03;

public class Computer extends Calculator{
	
	@Override // 부모와 메소드 선언부분이 동일해야한다 단, 접근제한자는 커져도 된다
	
	public double areaCircle(double r) {
		return 2*3.14*r;
	}

	
}
