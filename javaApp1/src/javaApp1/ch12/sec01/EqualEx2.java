package javaApp1.ch12.sec01;

public class EqualEx2 {
	//해쉬코드가 같으면 아예 다른 객체
	public static void main(String[] args) {
		Netflix a1 = new Netflix("1000", "a1", "123");
		Netflix a2 = new Netflix("2000", "a1", "123");
		if (a1.hashCode()==a2.hashCode()) {
			if(a1.equals(a2)) {
				System.out.println("같다");
			}
			else {
				System.out.println("키는 같지만 다른 유저");
			}
		}
		else {
			System.out.println("키가 다르므로 다른 유저");
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