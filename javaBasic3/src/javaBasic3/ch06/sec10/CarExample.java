package javaBasic3.ch06.sec10;

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car();
		System.out.println("ȸ��� : " + myCar.company);
		System.out.println("�𵨸� : " + myCar.model);
		System.out.println("���� : " + myCar.color);
		System.out.println("�ְ�ӵ� : " + myCar.maxSpeed);
		System.out.println("����ӵ� : " + myCar.speed);
		
		myCar.speed = 60;
		System.out.println("������ �ӵ� : " + myCar.speed);
		System.out.println();
		
		Car myCar2 = new Car("���", "k5", "���", 300, 50);
		System.out.println("ȸ��� : " + myCar2.company);
		System.out.println("�𵨸� : " + myCar2.model);
		System.out.println("���� : " + myCar2.color);
		System.out.println("�ְ�ӵ� : " + myCar2.maxSpeed);
		System.out.println("����ӵ� : " + myCar2.speed);
		
		myCar2.speed = 60;
		System.out.println("�����ȼӵ� : " + myCar2.speed);
		
		Car car3 = new Car();
		car3.setCompany("�����ڵ���");
		car3.setModel("BMW");
		car3.setMaxSpeed(300);
		car3.setColor("�����ڵ���");
		car3.setSpeed(0);
		
		System.out.println(car3.getCompany());
		System.out.println(car3.getModel());
		System.out.println(car3.getColor());
		System.out.println(car3.getMaxSpeed());
		System.out.println(car3.getSpeed());
		
		
	}

}
