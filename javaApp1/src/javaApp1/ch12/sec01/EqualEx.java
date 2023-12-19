package javaApp1.ch12.sec01;

public class EqualEx {

	public static void main(String[] args) {
		Student s1 = new Student("a123", "p123");
		System.out.println(s1.hashCode());
		Student s2 = new Student("a123", "p123");
		System.out.println(s2.hashCode());
		// 요구사항 : id와pw가 같으면 동등객체
		System.out.println(s1.equals(s2));
	}

}
class Student{
	String id;
	String pw;
	
	public Student(String string, String string2) {
		id = string;
		pw = string2;
	}
	
	@Override
	public int hashCode() {
		return id.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Student) {
			Student st = (Student) obj;
			if(id == st.id && pw == st.pw) {
				return true;
			}
		}
		return false;
	}
}