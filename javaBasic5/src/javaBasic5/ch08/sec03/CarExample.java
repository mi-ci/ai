package javaBasic5.ch08.sec03;

public class CarExample {

	public static void main(String[] args) {
		CarRun c = new CarRun();
		c.drive(new Bus());
		c.drive(new Taxi());
		c.drive(new Train());
	}

}

