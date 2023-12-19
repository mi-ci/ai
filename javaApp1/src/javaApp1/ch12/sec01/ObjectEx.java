//package javaApp1.ch12.sec01;
//
//public class ObjectEx extends Object{
//
//	public static void main(String[] args) {
//		//Object의 메소드는 모든 클래스들이 다 쓸 수 있다. 재정의 할 수 있다.
//		Member obj1 = new Member("blue");
//		Member obj2 = new Member("blue");
//		Member obj3 = new Member("red");
//		
//		if (obj2.equals(obj3)) {
//			System.out.println("같다");
//		}
//		else {
//			System.out.println("다르다");
//		}
//	}
//
//}
//class Member{
//	public String id;
//	public Member(String id) {
//		this.id = id;
//	}
//	
//	@Override
//	public boolean equals(Object obj) {
//		if (obj instanceof Member) {
//			Object m = obj;
//			if(id.equals(m.id)) {
//				return true;
//				
//			}
//		}
//		return false;
//	}a
//	
//	@Override
//	public int hashCode() {
//		return super.hashCode();
//	}
//}