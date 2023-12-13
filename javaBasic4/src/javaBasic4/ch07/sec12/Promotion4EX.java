package javaBasic4.ch07.sec12;

import java.util.Scanner;

public class Promotion4EX {
	public static void main(String[] args) {
		
		Promotion4EX p= new Promotion4EX();
		while(true) {
			p.menuDisplay();
			int menu = p.menuChoice();
			if(menu==5) {
				System.out.println("����");
				break;
			}
			p.output(menu);
			
		}
	}
	
	public void menuDisplay() {
		System.out.println("-------------------------");
		System.out.println("1.�� 2.������ 3.�ܹ��� 4.����");
		System.out.println("-------------------------");
	}
	
	public int menuChoice() {
		Scanner sc = new Scanner(System.in);
		System.out.println("�޴��� �����ϼ���");
		int menu = sc.nextInt();
		return menu;
	}
	
//	public String output(int menu) {
//		if(menu==1) {
//			return "��";
//		}
//		if(menu==2) {
//			return "�ܹ���";
//			
//		}
//		if(menu==3) {
//			return "������";
//			
//		}
//		if(menu==4) {
//			return "����";
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
		System.out.print(" ���ְ� �弼��");
		System.out.println();
		return null;
	}

}


class A{
	void eat() {
		System.out.print("��");
	}
}

class B extends A{
	@Override
	void eat() {
		System.out.print("������");
	}
}

class BB extends A{
	@Override
	void eat() {
		System.out.print("�ܹ���");
	}
}

class C extends B{
	@Override
	void eat() {
		System.out.print("����");
	}
}

