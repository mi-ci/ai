package javaApp4.ch16.sec02;

public class LamdaEx02 {

	public static void main(String[] args) {
//		College<String> c = a -> a+"대학교";
//		
//		System.out.println(c.cName("서울"));
		
//		fruits f = a -> a+"사세요";
//		System.out.println(f.sell("사과"));
		
		price p = a -> {
			if(a>3000) {
				return "비싸요";
			}
			else {
				return "싸요";
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