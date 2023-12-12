package javaBasic4.ch07.sec04;

public class SupersonicAirplaneExample {

	public static void main(String[] args) {
		SupersonicAirplane s = new SupersonicAirplane();
		s.takeOff();
		s.fly();
		s.flyMode = SupersonicAirplane.SUPERSONIC;
		s.fly();
		s.flyMode = SupersonicAirplane.ROUND;
		s.fly();
		s.flyMode = SupersonicAirplane.SLOW;
		s.fly();
		s.land();
		
	}

}
