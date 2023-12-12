package javaBasic4.ch07.sec01;

public class SmartPhoneExample {

	public static void main(String[] args) {
		Phone p = new Phone();
		p.bell();
		p.sendVoice("Àß Àä¾î!");
		p.receiveVoice("Àß Àä¾î");
		p.hangUp();
		
		SmartPhone s = new SmartPhone();
		s.sendVoice("¿À´Ã ¹¹ÇØ");
		
		SmartPhone s2 = new SmartPhone("¾ÆÀÌÆù", "Èò»ö");
		System.out.println(s2.model);
		
		s2.setWifi(true);
		s2.internet();
		s2.setWifi(false);
		s2.internet();
		
		s2.sendVoice("ÇÚµåÆù »ò¾î?");
		System.out.print(s2.model + " Àº " + s2.color + "ÀÌ°í ");
		s2.bell();
		
		
		
		
	}

}
