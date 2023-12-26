package javaApp1.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx2 {

	public static void main(String[] args) {
		Board b1 = new Board(3, "����3", "�ۼ���3");
		Board b2 = new Board(2, "����2", "�ۼ���2");
		Board b3 = new Board(1, "����1", "�ۼ���1");
		Board b4 = new Board(4, "����4", "�ۼ���4");
		
		TreeSet<Board> ts = new TreeSet<Board>();
		ts.add(b1);
		ts.add(b2);
		ts.add(b3);
		ts.add(b4);
		
		for (Board board : ts) {
			System.out.println(board);
		}
//		System.out.println(ts.size());
	}

}

class Board implements Comparable<Board> {
	Integer no;
	String title;
	String writer;
	
	public Board(Integer no, String title, String writer) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
	}
	
	@Override
	public String toString() {
		return no + " " + title + " " + writer;
	}
	


//	@Override
//	public int compareTo(Board o) {
//		if (no==o.no) {
//			return 0;
//		}
//		else if (no < o.no) {
//			return -1;
//		}
//		else {
//			return 1;
//		}
//	}
	
	@Override
	public int compareTo(Board o) {
		return writer.compareTo(o.writer)*(-1);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}