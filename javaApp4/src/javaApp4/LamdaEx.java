package javaApp4;

public class LamdaEx {

	public static void main(String[] args) {
		Inter01Impl a = new Inter01Impl();
		a.a();
		
		Inter01 a2 = new Inter01() {
			
			@Override
			public void a() {
			}
		};
		
		a2.a();
		
		Inter02 b2 = new Inter02() {
			
			@Override
			public void b() {
			}
		};
		
		b2.b();
		
		Inter01 lamda001 = () -> {
			System.out.println("���ٽ����� ���� �͸� ����");
		};
		
		lamda001.a();
		
	}

}

interface Inter01{
	void a();
//	void c();
}

interface Inter02{
	void b();
}


class Inter01Impl implements Inter01{
	@Override
	public void a() {
		System.out.println("�������̽��� ������ Ŭ����");
	}
}