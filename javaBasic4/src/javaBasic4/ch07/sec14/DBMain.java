package javaBasic4.ch07.sec14;

public class DBMain {

	public static void main(String[] args) {
		Connect c = new Connect();
		c.db = new Oracle();
		c.dbRun();
		c.db = new mySQL();
		c.dbRun();
		c.db = new MongoDB();
		c.dbRun();
	}
}

class Connect{
	public DB db;
	
	public void dbRun() {
		db.runDB();
	}
}
