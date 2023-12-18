package javaBasic7.ch11.sec02.exam01;

public class ExceptionEx {
	public static void printlength(String data) {
		int result = data.length();
		System.out.println("문자수는 :" + result);
	}
	public static void main(String[] args) {
		
		try {
			int a = 10;
			a = a/2;
			System.out.println(a);
			int[] iArr = {10,20,30};
			System.out.println(iArr[2]);
			
			printlength("this is java");
//			printlength(null);
			
			Class.forName("java.lang.ABCDEF");
		}
		catch (ArithmeticException e) {
			System.out.println("0으로 나눌 수 없습니다");
		}
		catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("4열이 없어요");
		}
		catch (NullPointerException e) {
			System.out.println("null포인트");
		} 
//		catch (ClassNotFoundException e) {
//			System.out.println("클래스명이 틀렸습니다");
//		}
		catch (Exception e) {
			System.out.println("모든 예외의 부모 클래스");
			e.printStackTrace();
		}
		finally{
			System.out.println("로그아웃");
		}
		
		
		

	}

}
