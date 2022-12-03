package com.smhrd.domain;

public class Comments {

	// 필드명
	private int mem_num;
	private int comments_num;
	private String board_title;
	private String comments;
	private String mem_nick;
	
	
	// getter, setter
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public int getComments_num() {
		return comments_num;
	}
	public void setComments_num(int comments_num) {
		this.comments_num = comments_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	
	// 0 생성자
	public Comments() {
		super();
	}
	
	// 4개짜리 생성자
	public Comments(int mem_num, String board_title, String comments, String mem_nick) {
		super();
		this.mem_num = mem_num;
		this.board_title = board_title;
		this.comments = comments;
		this.mem_nick = mem_nick;
	}

	

}
