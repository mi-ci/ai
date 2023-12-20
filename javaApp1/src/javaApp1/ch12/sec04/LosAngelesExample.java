package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelesExample {

	public static void main(String[] args) {
		TimeZone timezone = TimeZone.getTimeZone("Asia/Seoul");
//		TimeZone timezone = TimeZone.getTimeZone("America/Los_Angeles");
		Calendar now = Calendar.getInstance(timezone);
		System.out.println(now.get(Calendar.HOUR) + "시" + now.get(Calendar.MINUTE) + "분");
		
		//전세계 타임존 아이디값 얻기
//		String[] av = TimeZone.getAvailableIDs();
//		for (String string : av) {
//			System.out.println(string);
//		}
		
		LocalDateTime now1 = LocalDateTime.now();
		System.out.println(now1);
		System.out.println(now1.getHour());
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy.MM.dd a HH:mm:ss");
		System.out.println(now1.format(dtf));
		System.out.println(now1.plusYears(-3));
		System.out.println(now1.minusYears(3));
		System.out.println(now1.plusWeeks(2));
		
		
	}

}
