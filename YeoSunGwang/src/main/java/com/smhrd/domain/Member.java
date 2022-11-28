package com.smhrd.domain;

public class Member {

	// 필드명 = 속성(property)
	private String id;
	private String pw;
	private String nick;
	private String name;
	private String email;
	private Number memnum;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Number getMemnum() {
		return memnum;
	}

	public void setMemnum(Number memnum) {
		this.memnum = memnum;
	}

	public Member(String id, String pw, String nick, String name, String email, Number memnum) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.name = name;
		this.email = email;
		this.memnum = memnum;
	}

	public Member(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public Member(String id, String pw, String nick, String name, Number memnum) {
		super();
		this.id = id;
		this.pw = pw;
		this.nick = nick;
		this.name = name;
		this.memnum = memnum;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", nick=" + nick + ", name=" + name + ", email=" + email +"]";
	}
	
}
