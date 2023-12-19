package javaApp1.ch12.sec01;

public class EqualEx2 {
	//�ؽ��ڵ尡 ������ �ƿ� �ٸ� ��ü
	public static void main(String[] args) {
		Netflix a1 = new Netflix("1000", "a1", "123");
		Netflix a2 = new Netflix("2000", "a1", "123");
		if (a1.hashCode()==a2.hashCode()) {
			if(a1.equals(a2)) {
				System.out.println("����");
			}
			else {
				System.out.println("Ű�� ������ �ٸ� ����");
			}
		}
		else {
			System.out.println("Ű�� �ٸ��Ƿ� �ٸ� ����");
		}
		
	}

}

class Netflix {
	String key;
	String id;
	String pw;
	
	public Netflix(String key, String id, String pw) {
		this.key = key;
		this.id = id;
		this.pw = pw;
	}
	
	@Override
	public int hashCode() {
		return key.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Netflix) {
			Netflix nf = (Netflix) obj;
			if(key==nf.key && id==nf.id && pw==nf.pw) {
				return true;
			}
		}
		return false;
	}
	
}