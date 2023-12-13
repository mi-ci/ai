package javaBasic4.ch07.sec12;

import java.util.Scanner;

public class Promotion4EX {
	public static void main(String[] args) {
		
		Promotion4EX p= new Promotion4EX();
		while(true) {
			p.menuDisplay();
			int menu = p.menuChoice();
			if(menu==5) {
				System.out.println("Á¾·á");
				break;
			}
			p.output(menu);
			
		}
	}
	
	public void menuDisplay() {
		System.out.println("-------------------------");
		System.out.println("1.¹ä 2.¶±ººÀÌ 3.ÇÜ¹ö°Å 4.ÇÇÀÚ");
		System.out.println("-------------------------");
	}
	
	public int menuChoice() {
		Scanner sc = new Scanner(System.in);
		System.out.println("¸Þ´º¸¦ ¼±ÅÃÇÏ¼¼¿ä");
		int menu = sc.nextInt();
		return menu;
	}
	
//	public String output(int menu) {
//		if(menu==1) {
//			return "¹ä";
//		}
//		if(menu==2) {
//			return "ÇÜ¹ö°Å";
//			
//		}
//		if(menu==3) {
//			return "¶±ººÀÌ";
//			
//		}
//		if(menu==4) {
//			return "ÇÇÀÚ";
//			
//		}
//		else {			
//			return null;
//		}
//	}
	
	public String output(int menu) {
		A a = null;
		if(menu==1) {
			a = new A();
		}
		if(menu==2) {
			a = new B();
			
		}
		if(menu==3) {
			a = new BB();
			
		}
		if(menu==4) {
			a = new C();			
		}
		a.eat();
		System.out.print(" ¸ÀÀÖ°Ô µå¼¼¿ä");
		System.out.println();
		return null;
	}

}


class A{
	void eat() {
		System.out.print("¹ä");
	}
}

class B extends A{
	@Override
	void eat() {
		System.out.print("¶±ººÀÌ");
	}
}

class BB extends A{
	@Override
	void eat() {
		System.out.print("ÇÜ¹ö°Å");
	}
}

class C extends B{
	@Override
	void eat() {
		System.out.print("ÇÇÀÚ");
	}
}

