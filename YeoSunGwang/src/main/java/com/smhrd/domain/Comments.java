package com.smhrd.domain;

public class Comments {

	// 필드명
	private int mem_num;
	private int board_num;
	private int comments_num;
	private String comments;
	private String mem_nick;


	// getter, setter
	
	public String getMem_nick() {
		return mem_nick;
	}
	
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	
	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public int getComments_num() {
		return comments_num;
	}

	public Comments() {
		super();
	}

	public void setComments_num(int comments_num) {
		this.comments_num = comments_num;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	// 생성자
	public Comments(int mem_num, int board_num, String comments, String mem_nick) {
		super();
		this.mem_num = mem_num;
		this.board_num = board_num;
		this.comments = comments;
		this.mem_nick= mem_nick;
	}

	@Override
	public String toString() {
		return "Member [mem_num=" + mem_num + ", comments=" + comments + ", comments_num=" + comments_num
				+ " + board_num=" + board_num + " + board_num=" + board_num + "]";
	}

}
