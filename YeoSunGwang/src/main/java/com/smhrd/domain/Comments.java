package com.smhrd.domain;

public class Comments {
	
	// 필드명
	private int mem_num;
	private int comments_num;
	private String comments;
	

	// getter,setter
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
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	
	// 생성자
	public Comments(int mem_num, int comments_num, String comments) {
		super();
		this.mem_num = mem_num;
		this.comments_num = comments_num;
		this.comments = comments;
	}
	
	// 생성자
	public Comments(int mem_num, String comments) {
		super();
		this.mem_num = mem_num;
		this.comments = comments; 
	}
	
	
	@Override
	public String toString() {
		return "Member [mem_num=" + mem_num + ", comments=" + comments + ", comments_num=" + comments_num + "]";
	}
	
	
	
	
	
	
}


