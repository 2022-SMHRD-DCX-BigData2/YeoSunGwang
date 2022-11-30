package com.smhrd.domain;

public class Board {

	// 필드명 = 속성(property)
	private String board_title;
	private String board_content;
	private String board_num;
	private int mem_num;
	private String board_date;
	private Number Like_total;
	private int travel_admin;
	private int category_admin;
	
	// getter, setter
	
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_num() {
		return board_num;
	}
	public void setBoard_num(String board_num) {
		this.board_num = board_num;
	}
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public Number getLike_total() {
		return Like_total;
	}
	public void setLike_total(Number like_total) {
		Like_total = like_total;
	}
	public int getTravel_admin() {
		return travel_admin;
	}
	public void setTravel_admin(int travel_admin) {
		this.travel_admin = travel_admin;
	}
	public int getCategory_admin() {
		return category_admin;
	}
	public void setCategory_admin(int category_admin) {
		this.category_admin = category_admin;
	}
	
	// 생성자
	
	
	
	
}
