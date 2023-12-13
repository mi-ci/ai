package javaBasic4.ch07.sec13;

public class CarEx {

	public static void main(String[] args) {
		Car car = new Car();
		car.tire = new Tire();
//		car.tire = new HankookTire();
//		Tire tire = new HankookTire();
		car.run();
	}

}
