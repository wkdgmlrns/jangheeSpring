package kr.co.domain;

import java.util.Date;

public class BoardVO {
	
	private int board_id;
	private String title, content, writer;
	private Date regDate;
	private int viewCount;
	
	public BoardVO() {};
	
	public BoardVO(int board_id, String title, String content, String writer, Date regDate, int viewCount) {
		super();
		this.board_id = board_id;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regDate = regDate;
		this.viewCount = viewCount;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	@Override
	public String toString() {
		return "BoardVO [board_id=" + board_id + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regDate=" + regDate + ", viewCount=" + viewCount + "]";
	}
}
