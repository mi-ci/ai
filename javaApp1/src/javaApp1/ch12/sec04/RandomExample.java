package javaApp1.ch12.sec04;

import java.util.Arrays;
import java.util.Random;

public class RandomExample {

	public static void main(String[] args) {
		int[] selectNumber = new int[6];
		Random random = new Random(3);
//		for (int i : selectNumber) {
//			i = random.nextInt(45)+1;
//		}
		for (int i = 0; i < selectNumber.length; i++) {
			selectNumber[i] = random.nextInt(45)+1;
		}
		int[] winningNumber = new int[6];
		random = new Random(3);
//		for (int i : winningNumber) {
//			i = random.nextInt(45)+1;
//		}
		for (int i = 0; i < winningNumber.length; i++) {
			winningNumber[i] = random.nextInt(45)+1;
		}
		
		Arrays.sort(selectNumber);
		Arrays.sort(winningNumber);
		
		if (Arrays.equals(selectNumber, winningNumber)) {
			System.out.println("´çÃ·");
		}
		else {
			System.out.println("²Î");
		}
		
		System.out.println("ÀÔ·Â¹øÈ£");
		for (int i : selectNumber) {
			System.out.print(i + " ");
		}
		System.out.println();
		System.out.println("´çÃ·¹øÈ£");
		for (int i : winningNumber) {
			System.out.print(i + " ");			
		}
	}

}
