package javaBasic3.ch06.sec10;

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car();
		System.out.println("회사명 : " + myCar.company);
		System.out.println("모델명 : " + myCar.model);
		System.out.println("색상 : " + myCar.color);
		System.out.println("최고속도 : " + myCar.maxSpeed);
		System.out.println("현재속도 : " + myCar.speed);
		
		myCar.speed = 60;
		System.out.println("수정된 속도 : " + myCar.speed);
		System.out.println();
		
		Car myCar2 = new Car("기아", "k5", "흰색", 300, 50);
		System.out.println("회사명 : " + myCar2.company);
		System.out.println("모델명 : " + myCar2.model);
		System.out.println("색상 : " + myCar2.color);
		System.out.println("최고속도 : " + myCar2.maxSpeed);
		System.out.println("현재속도 : " + myCar2.speed);
		
		myCar2.speed = 60;
		System.out.println("수정된속도 : " + myCar2.speed);
		
		Car car3 = new Car();
		car3.setCompany("독일자동차");
		car3.setModel("BMW");
		car3.setMaxSpeed(300);
		car3.setColor("독일자동차");
		car3.setSpeed(0);
		
		System.out.println(car3.getCompany());
		System.out.println(car3.getModel());
		System.out.println(car3.getColor());
		System.out.println(car3.getMaxSpeed());
		System.out.println(car3.getSpeed());
		
		
	}

}
