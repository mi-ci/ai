package javaBasic5.ch08.sec01;

public interface C extends B {
	@Override
	default void eat() {
	}
	
	@Override
	default void fly() {
	}
}
