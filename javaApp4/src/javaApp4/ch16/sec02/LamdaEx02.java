package javaApp4.ch16.sec02;

public class LamdaEx02 {

	public static void main(String[] args) {
//		College<String> c = a -> a+"���б�";
//		
//		System.out.println(c.cName("����"));
		
//		fruits f = a -> a+"�缼��";
//		System.out.println(f.sell("���"));
		
		price p = a -> {
			if(a>3000) {
				return "��ο�";
			}
			else {
				return "�ο�";
			}
		};
		
		
		System.out.println(p.dc(1000));
	}

}
interface College<T>{
	T cName(T name);
}

interface fruits{
	String sell(int a);
}

interface price{
	String dc(int a);
}