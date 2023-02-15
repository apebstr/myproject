package board.dto;

import java.sql.Date;

public class BoardDTO {
	
	private int num;
	private String writer;
	private String title;
	private String content;
	private Date regdate;
	private int readcount;
	
	public BoardDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public BoardDTO(int num, String writer, String title, String content, Date regdate, int readcount) {
		super();
		this.num = num;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.readcount = readcount;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}	
}//class BoardDTO
