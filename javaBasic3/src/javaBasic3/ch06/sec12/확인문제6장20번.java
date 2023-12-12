package javaBasic3.ch06.sec12;

import java.util.Scanner;

public class 확인문제6장20번 {

	public static void main(String[] args) {
		BankApplication ba = new BankApplication();
		Scanner sc = new Scanner(System.in);
		
		
		
		while(true) {
			System.out.println("-------------------------------------");
			System.out.println("1.계좌생성 2.계좌목록 3.예금 4.출금 5.종료");
			System.out.println("-------------------------------------");
			System.out.println("선택>");
			int menu = sc.nextInt();
			if(menu==5) {
				System.out.println("프로그램이 종료되었습니다");
				break;
			}
			
			while(true) {
				if(menu==1) {
					ba.계좌생성();
					break;
				}
				else if(menu==2) {
					ba.계좌목록();
					break;
				}
				else if(menu==3) {
					ba.예금();
					break;
					
				}
				else if(menu==4) {
					ba.출금();
					break;
				}
				else {
					System.out.println("메뉴를 다시 입력해주세요");
					break;
				}
			}
		}
	}

}
