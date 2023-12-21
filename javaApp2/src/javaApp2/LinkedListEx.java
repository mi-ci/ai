package javaApp2;

import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {
	public static void main(String[] args) {
		LinkedList<Board> boardlist = new LinkedList<Board>();
		Board b1 = new Board(1, "제목1", "내용1" , "홍길동", LocalDateTime.now());
		Board b2 = new Board(2, "제목2", "내용2" , "이순신", LocalDateTime.now());
		Board b3 = new Board(3, "제목3", "내용3" , "최경미", LocalDateTime.now());
		Board b4 = new Board(0, "제목0", "내용0" , "관리자", LocalDateTime.now());
		boardlist.add(b1);
		boardlist.add(b2);
		boardlist.add(b3);
		boardlist.add(0, b4);
		System.out.println(boardlist.get(1));
//		for (Board board : boardlist) {
//			if (board.writer == "최경미") {
//				Board a = board;
//				System.out.println(boardlist.contains(a));
//				System.out.println(a.content);
//			}
//		}
		
		for (Board board : boardlist) {
			if (board.writer=="이순신") {
				Board a = board;
				System.out.println(boardlist.remove(a));
			}
				
		}
		for (Board board : boardlist) {
			System.out.println(board.toString()); //주소를 출력하면 자동으로 toString이 붙는다
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