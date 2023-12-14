package javaBasic5.ch08.sec01;

public class CCimp implements CC {

	@Override
	public void bbM() {
	}

	@Override
	public void aaM() {
	}

	@Override
	public void ccM() {
	}

	
	public static void main(String[] args) {
		AA c = new CCimp();
		BB c1 = new CCimp();
		CC c2 = new CCimp();
		CCimp c3 = new CCimp();
		
		c.aaM();
		
	}
}
