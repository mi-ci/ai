package javaBasic3.ch06.sec12;

import java.util.Scanner;

public class BankApplication {
	Scanner sc = new Scanner(System.in);
	Account[] accounts = new Account[100];
	int c=0;
	
	public void 계좌생성() {
		System.out.println("-------------");
		System.out.println("계좌생성");
		System.out.println("-------------");
		System.out.println("계좌번호 : ");
		String 계좌번호 = sc.next();
		System.out.println("계좌주 : ");
		String 계좌주 = sc.next();
		System.out.println("초기입금액 : ");
		int 초기입금액 = sc.nextInt();
		for (int i = c; i < accounts.length; i++) {
			accounts[i] = new Account();
			if(accounts[i].계좌번호.equals("a") && accounts[i].계좌주.equals("a") && accounts[i].초기입금액==0) {
				accounts[i].계좌번호=계좌번호;
				accounts[i].계좌주=계좌주;
				accounts[i].초기입금액=초기입금액;
				c=c+1;
				break;
			}
		}
		
	}
	public void 계좌목록() {
			
		for (int i = 0; i < c; i++) {
			System.out.println("계좌번호 : " +accounts[i].계좌번호);
			System.out.println("계좌주 : " +accounts[i].계좌주);				
			System.out.println("잔고 : " +accounts[i].초기입금액);				
		}
		
	}
	public void 예금() {
		System.out.println("계좌번호를 입력하세요>");
		String 계좌번호 = sc.next();
		for (int i = 0; i < accounts.length; i++) {
			if(accounts[i].계좌번호.equals(계좌번호)) {
				System.out.println("입금할 금액을 입력하세요>");
				int deposit = sc.nextInt();
				accounts[i].초기입금액 = accounts[i].초기입금액 + deposit;				
				System.out.println("잔고 : " +accounts[i].초기입금액);
			}
			else {
				System.out.println("계좌번호가 틀렸습니다");
				break;
			}
		}
	}
	public void 출금() {
		System.out.println("계좌번호를 입력하세요>");
		String 계좌번호 = sc.next();
		for (int i = 0; i < accounts.length; i++) {
			if(accounts[i].계좌번호.equals(계좌번호)) {
				System.out.println("출금할 금액을 입력하세요>");
				int withdrawl = sc.nextInt();
				accounts[i].초기입금액 = accounts[i].초기입금액 - withdrawl;				
				System.out.println("잔고 : " +accounts[i].초기입금액);
			}
			else {
				System.out.println("계좌번호가 틀렸습니다");
				break;
			}
		}
		
		
	}
}
