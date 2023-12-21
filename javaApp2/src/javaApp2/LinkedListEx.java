package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {
	public static void main(String[] args) {
		LinkedList<Board> boardlist = new LinkedList<Board>();
		Board b1 = new Board(1, "����1", "����1" , "ȫ�浿", LocalDateTime.now());
		Board b2 = new Board(2, "����2", "����2" , "�̼���", LocalDateTime.now());
		Board b3 = new Board(3, "����3", "����3" , "�ְ��", LocalDateTime.now());
		Board b4 = new Board(0, "����0", "����0" , "������", LocalDateTime.now());
		boardlist.add(b1);
		boardlist.add(b2);
		boardlist.add(b3);
		boardlist.add(0, b4);
		System.out.println(boardlist.get(1));
//		for (Board board : boardlist) {
//			if (board.writer == "�ְ��") {
//				Board a = board;
//				System.out.println(boardlist.contains(a));
//				System.out.println(a.content);
//			}
//		}
		
		for (Board board : boardlist) {
			if (board.writer=="�̼���") {
				Board a = board;
				System.out.println(boardlist.remove(a));
			}
				
		}
		for (Board board : boardlist) {
			System.out.println(board.toString()); //�ּҸ� ����ϸ� �ڵ����� toString�� �ٴ´�
		}
		
		
	}

}

class Board{
	int no;
	String title;
	String content;
	String writer;
	LocalDateTime date;
	
	public Board(int no, String title, String content, String writer, LocalDateTime date) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.date = date;
	}
	
	@Override
	public String toString() {
		return no + title + content + writer  ;
	}
}