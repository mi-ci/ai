package javaBasic3.ch06.sec07;

public class ShopService {

	private static ShopService shopService = new ShopService();
	private ShopService () {
		
	}
	
	public static ShopService getIService() {
		return shopService;
}
//	private static ShopService shopService = new ShopService();
	
//	}
	
	


//	public static ShopService getInstance() {
//		// TODO Auto-generated method stub
//		return shopService;}
	}


// 힌트 싱클톤 패턴으로 ShopService 클래스를 만들어 준다.
//1. 생성자는 private 2.필드는 객체화해서 생성자의 주소를 저장하고 private합니다.
//메소드인 getInstance()에서 리턴값을 생성자의 주소입닏다. 접근제한자는 public
