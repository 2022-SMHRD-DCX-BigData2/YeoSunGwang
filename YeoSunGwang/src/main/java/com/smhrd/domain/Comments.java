package com.smhrd.domain;

public class Comments {

	// 필드명
	private int mem_num;
	private int comments_num;
	private int board_num;
	private String comments;
	private String mem_nick;
	private int comu_num;
	
	// getter , setter
	
	public int getComu_num() {
		return comu_num;
	}
	public void setComu_num(int comu_num) {
		this.comu_num = comu_num;
	}
	
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
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
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
	
	// 0개짜리 생성자
	public Comments() {
		super();
	}
	
	// 1개짜리 생성자
	public Comments(int board_num) {
		super();
		this.board_num = board_num;
	}
	
	
	// 3개짜리 생성자
	public Comments(String comments, String mem_nick, int comu_num) {
		super();
		this.comments = comments;
		this.mem_nick = mem_nick;
		this.comu_num = comu_num;
	}
	
	// 4개짜리 생성자
	public Comments(int mem_num, int board_num, String comments, String mem_nick) {
		super();
		this.mem_num = mem_num;
		this.board_num = board_num;
		this.comments = comments;
		this.mem_nick = mem_nick;
	}
	
	// 5개짜리 생성자
	public Comments(int mem_num, int board_num, String comments, String mem_nick, int comu_num) {
		super();
		this.mem_num = mem_num;
		this.board_num = board_num;
		this.comments = comments;
		this.mem_nick = mem_nick;
		this.comu_num = comu_num;
	}
	
	

	
	
	
	
	
	


	

}
