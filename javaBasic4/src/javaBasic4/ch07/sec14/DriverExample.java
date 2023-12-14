package javaBasic4.ch07.sec14;

public class DriverExample {

	public static void main(String[] args) {
		Driver d = new Driver();
		Bus b = new Bus();
		Taxi t = new Taxi();
		Vehicle v = new Vehicle();
		d.drive(b);
		d.drive(t);
		
		System.out.println(b instanceof Bus);
		System.out.println(t instanceof Vehicle);
		System.out.println(t instanceof Taxi);
		System.out.println(v instanceof Bus);
		
		
		
		
	}

}
