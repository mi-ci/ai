package javaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx4 {

	public static void main(String[] args) {
		Board b1 = new Board("ȫ�浿", "�ڹ�", "��ƴ�");
		Board b2 = new Board("�̼���", "���̽�", "����");
		Board b3 = new Board("ȫ�浿", "������", "���� �� �����");
		Board b4 = new Board("ȫ�浿", "������", "���� �� �����");
		Board b5 = new Board("�̼���", "�Ǵٽ�", "���� �� �����");
		
		Set<Board> set = new HashSet<Board>();
		
		set.add(b1);
		set.add(b2);
		set.add(b3);
		set.add(b4);
		set.add(b5);
		
		System.out.println(set.size());
		
		Iterator<Board> it = set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next().printa());
			it.remove();
		}
		
		
//		System.out.println(b3.hashCode());
//		System.out.println(b4.hashCode());
		System.out.println(b3.equalhap(b4));
		
	}

}

class Board {
	String writer;
	String title;
	String content;
	
	public Board(String writer, String title, String content) {
		super();
		this.writer = writer;
		this.title = title;
		this.content = content;
	}
	@Override
	public int hashCode() {
		return writer.hashCode() + title.hashCode() + content.hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Board) {
			Board a = (Board) obj;
			return writer == a.writer && title == a.title && content == a.content;
		}
		return false;
	}
	
	
	public boolean equalhap(Object obj) {
		if(obj instanceof Board) {
			Board a = (Board) obj;
			return writer == a.writer && title == a.title && content == a.content;
		}
		return false;
	}
	
	public String printa() {
		return writer + " " + title + " " + content;
	}
	
}