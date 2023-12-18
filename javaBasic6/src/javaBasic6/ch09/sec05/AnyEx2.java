package javaBasic6.ch09.sec05;

public class AnyEx2 {

	public static void main(String[] args) {
		
		CImpl ci = new CImpl();
		ci.cM();
		
		C ci2 = new CImpl() {
			@Override
			public void cM() {
				System.out.println("hi");
			}
		};
		ci2.cM();
		
		C ci3 = new C() {
			// 익명클래스 뒤에는 세미콜론이 붙어있음
			@Override
			public void cM() {
				System.out.println("익명구현클래스의 메소드");
			}
			
		};
		ci3.cM();
		
	}

}
//인터페이스는 new 할 수 없음
interface C{
	//추상메소드만 잔뜩 모인곳 : {} 안에 들어갈 실행내용 필요없음 추상이니깐
	abstract void cM();
	
}

class CImpl implements C{
	@Override
	public void cM() {
		System.out.println(" 구현클래스 ");
	}
}