package javaBasic7.ch11.sec02.exam01;

public class ExceptionEx {
	public static void printlength(String data) {
		int result = data.length();
		System.out.println("���ڼ��� :" + result);
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
			System.out.println("0���� ���� �� �����ϴ�");
		}
		catch (ArrayIndexOutOfBoundsException e) {
			System.out.println("4���� �����");
		}
		catch (NullPointerException e) {
			System.out.println("null����Ʈ");
		} 
//		catch (ClassNotFoundException e) {
//			System.out.println("Ŭ�������� Ʋ�Ƚ��ϴ�");
//		}
		catch (Exception e) {
			System.out.println("��� ������ �θ� Ŭ����");
			e.printStackTrace();
		}
		finally{
			System.out.println("�α׾ƿ�");
		}
		
		
		

	}

}
