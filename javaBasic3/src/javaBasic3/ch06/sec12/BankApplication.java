package javaBasic3.ch06.sec12;

import java.util.Scanner;

public class BankApplication {
	Scanner sc = new Scanner(System.in);
	Account[] accounts = new Account[100];
	int c=0;
	
	public void ���»���() {
		System.out.println("-------------");
		System.out.println("���»���");
		System.out.println("-------------");
		System.out.println("���¹�ȣ : ");
		String ���¹�ȣ = sc.next();
		System.out.println("������ : ");
		String ������ = sc.next();
		System.out.println("�ʱ��Աݾ� : ");
		int �ʱ��Աݾ� = sc.nextInt();
		for (int i = c; i < accounts.length; i++) {
			accounts[i] = new Account();
			if(accounts[i].���¹�ȣ.equals("a") && accounts[i].������.equals("a") && accounts[i].�ʱ��Աݾ�==0) {
				accounts[i].���¹�ȣ=���¹�ȣ;
				accounts[i].������=������;
				accounts[i].�ʱ��Աݾ�=�ʱ��Աݾ�;
				c=c+1;
				break;
			}
		}
		
	}
	public void ���¸��() {
			
		for (int i = 0; i < c; i++) {
			System.out.println("���¹�ȣ : " +accounts[i].���¹�ȣ);
			System.out.println("������ : " +accounts[i].������);				
			System.out.println("�ܰ� : " +accounts[i].�ʱ��Աݾ�);				
		}
		
	}
	public void ����() {
		System.out.println("���¹�ȣ�� �Է��ϼ���>");
		String ���¹�ȣ = sc.next();
		for (int i = 0; i < accounts.length; i++) {
			if(accounts[i].���¹�ȣ.equals(���¹�ȣ)) {
				System.out.println("�Ա��� �ݾ��� �Է��ϼ���>");
				int deposit = sc.nextInt();
				accounts[i].�ʱ��Աݾ� = accounts[i].�ʱ��Աݾ� + deposit;				
				System.out.println("�ܰ� : " +accounts[i].�ʱ��Աݾ�);
			}
			else {
				System.out.println("���¹�ȣ�� Ʋ�Ƚ��ϴ�");
				break;
			}
		}
	}
	public void ���() {
		System.out.println("���¹�ȣ�� �Է��ϼ���>");
		String ���¹�ȣ = sc.next();
		for (int i = 0; i < accounts.length; i++) {
			if(accounts[i].���¹�ȣ.equals(���¹�ȣ)) {
				System.out.println("����� �ݾ��� �Է��ϼ���>");
				int withdrawl = sc.nextInt();
				accounts[i].�ʱ��Աݾ� = accounts[i].�ʱ��Աݾ� - withdrawl;				
				System.out.println("�ܰ� : " +accounts[i].�ʱ��Աݾ�);
			}
			else {
				System.out.println("���¹�ȣ�� Ʋ�Ƚ��ϴ�");
				break;
			}
		}
		
		
	}
}
