//package javaApp1.ch12.sec01;
//
//public class ObjectEx extends Object{
//
//	public static void main(String[] args) {
//		//Object�� �޼ҵ�� ��� Ŭ�������� �� �� �� �ִ�. ������ �� �� �ִ�.
//		Member obj1 = new Member("blue");
//		Member obj2 = new Member("blue");
//		Member obj3 = new Member("red");
//		
//		if (obj2.equals(obj3)) {
//			System.out.println("����");
//		}
//		else {
//			System.out.println("�ٸ���");
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