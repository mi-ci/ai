package javaApp1.ch12.sec05;

import java.io.IOException;
import java.util.Properties;

public class PropertiesEx {

	public static void main(String[] args) throws IOException {
		
		Properties p = new Properties();
		p.load(PropertiesEx.class.getResourceAsStream("database.properties"));
		System.out.println(p.getProperty("driver"));
		//Ʈ���� ���� : �˻��� �ӵ��� ������
	}

}
