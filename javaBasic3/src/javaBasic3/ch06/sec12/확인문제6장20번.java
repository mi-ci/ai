package javaBasic3.ch06.sec12;

import java.util.Scanner;

public class Ȯ�ι���6��20�� {

	public static void main(String[] args) {
		BankApplication ba = new BankApplication();
		Scanner sc = new Scanner(System.in);
		
		
		
		while(true) {
			System.out.println("-------------------------------------");
			System.out.println("1.���»��� 2.���¸�� 3.���� 4.��� 5.����");
			System.out.println("-------------------------------------");
			System.out.println("����>");
			int menu = sc.nextInt();
			if(menu==5) {
				System.out.println("���α׷��� ����Ǿ����ϴ�");
				break;
			}
			
			while(true) {
				if(menu==1) {
					ba.���»���();
					break;
				}
				else if(menu==2) {
					ba.���¸��();
					break;
				}
				else if(menu==3) {
					ba.����();
					break;
					
				}
				else if(menu==4) {
					ba.���();
					break;
				}
				else {
					System.out.println("�޴��� �ٽ� �Է����ּ���");
					break;
				}
			}
		}
	}

}
