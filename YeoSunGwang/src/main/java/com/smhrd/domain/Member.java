package com.smhrd.domain;


public class Member {



	// 필드명 = 속성(property)
	private String mem_id;
	private String mem_pw;
	private String mem_nick;
	private String mem_name;
	private String mem_email;
	private int mem_num;
	

	
	public Member() {
		super();
	}



	public Member(String mem_id, String mem_pw, String mem_nick, String mem_name, String mem_email) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_name = mem_name;
		this.mem_email = mem_email;
	}



	public Member(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}



	public Member(String mem_id, String mem_pw, String mem_nick, String mem_name, String mem_email, int mem_num) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_name = mem_name;
		this.mem_email = mem_email;
		this.mem_num = mem_num;
	}

	public Member(String mem_id, String mem_pw, String mem_nick, String mem_name, int mem_num) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_nick = mem_nick;
		this.mem_name = mem_name;
		this.mem_num = mem_num;
	}


	public String getMem_id() {
		return mem_id;
	}



	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}



	public String getMem_pw() {
		return mem_pw;
	}



	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}



	public String getMem_nick() {
		return mem_nick;
	}



	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}



	public String getMem_name() {
		return mem_name;
	}



	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}



	public String getMem_email() {
		return mem_email;
	}



	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}



	public int getMem_num() {
		return mem_num;
	}



	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}



	@Override
	public String toString() {
		return "Member [mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_nick=" + mem_nick + ", mem_name=" + mem_name + ", mem_email=" + mem_email +"]";
	}
	
}
