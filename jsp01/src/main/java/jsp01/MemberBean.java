package jsp01;

import java.io.Serializable;

public class MemberBean implements Serializable{
	private int id = 20181004;
	private String name = "홍길동";
	
	public MemberBean() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
}
