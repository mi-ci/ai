package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeZoneCompareEx {

	public static void main(String[] args) {
//		LocalDateTime start = LocalDateTime.of(2021, 1, 1, 0, 0);
//		LocalDateTime stop = LocalDateTime.of(2021, 12, 31, 23, 59);
//		LocalDateTime now = LocalDateTime.of(2021, 12, 31, 23, 59);
//		
// 		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd a HH:mm:ss");
// 		System.out.println(start.format(dtf));
// 		System.out.println(stop.format(dtf));
//		
// 		if(start.isBefore(stop)) {
// 			System.out.println("이벤트 진행중입니다");
// 		}
// 		if(now.isEqual(stop)) {
// 			System.out.println("이벤트 마감일입니다");
// 		}
 		
 		LocalDateTime start = LocalDateTime.of(2023, 12, 20, 12, 0);
 		LocalDateTime stop = LocalDateTime.of(2023, 12, 25, 11, 59);
 		LocalDateTime now1 = LocalDateTime.of(2023, 12, 16, 23, 59);
 		LocalDateTime now = LocalDateTime.now();
 		 		
 		if(now.getMonth() == stop.getMonth() && now.getYear() == stop.getYear() && now.getDayOfMonth() == stop.getDayOfMonth()  ) {
 			System.out.println("이벤트 마감일 세일 85%");
 		}
 		else {
 			if(now.isBefore(stop) && now.isAfter(start)) {
 				System.out.println("이벤트 기간 세일 70%");
 			}
 			else {
 				if(now.isBefore(stop)) {
 					System.out.println("이벤트 시작 전");
 				}
 				else {
 					System.out.println("이벤트 종료"); 					
 				}
 			}
 		}
 		
 		
	}

}
