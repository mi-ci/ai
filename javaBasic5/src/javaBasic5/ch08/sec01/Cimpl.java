package javaBasic5.ch08.sec01;

public class Cimpl implements C {
	@Override
	public void eat() {
		C.super.eat();
	}
	
	@Override
	public void fly() {
		C.super.fly();
	}
	
	
}
