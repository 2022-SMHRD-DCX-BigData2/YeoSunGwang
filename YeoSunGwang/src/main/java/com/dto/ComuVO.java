package com.dto;

public class ComuVO {

	private int comu_num;
	private int local_num;
	private String comu_title;
	private String comu_content;
	private String mem_nick;
	private String writedate;
	private int like_total;
	
	public ComuVO(int comu_num, int local_num, String comu_title, String comu_content, String mem_nick,
			String writedate, int like_total) {
		super();
		this.comu_num = comu_num;
		this.local_num = local_num;
		this.comu_title = comu_title;
		this.comu_content = comu_content;
		this.mem_nick = mem_nick;
		this.writedate = writedate;
		this.like_total = like_total;
	}
	
	public int getComu_num() {
		return comu_num;
	}
	public void setComu_num(int comu_num) {
		this.comu_num = comu_num;
	}
	public int getLocal_num() {
		return local_num;
	}
	public void setLocal_num(int local_num) {
		this.local_num = local_num;
	}
	public String getComu_title() {
		return comu_title;
	}
	public void setComu_title(String comu_title) {
		this.comu_title = comu_title;
	}
	public String getComu_content() {
		return comu_content;
	}
	public void setComu_content(String comu_content) {
		this.comu_content = comu_content;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	public String getWritedate() {
		return writedate;
	}
	public void setWritedate(String writedate) {
		this.writedate = writedate;
	}
	public int getLike_total() {
		return like_total;
	}
	public void setLike_total(int like_total) {
		this.like_total = like_total;
	}
	public ComuVO() {
		super();
	}



	public ComuVO(int comu_num, String mem_nick) {
		super();
		this.comu_num = comu_num;
		this.mem_nick = mem_nick;
	}
	
	

	public ComuVO(int comu_num) {
		super();
		this.comu_num = comu_num;
	}

	@Override
	public String toString() {
		return "ComuVO [comu_num=" + comu_num + ", local_num=" + local_num + ", comu_title=" + comu_title
				+ ", comu_content=" + comu_content + ", mem_nick=" + mem_nick + ", writedate=" + writedate
				+ ", like_total=" + like_total + "]";
	}
	
	public String check() {
		return "ComuVO [comu_num=" + comu_num + ", local_num=" + local_num + ", comu_title=" + comu_title
				+ ", comu_content=" + comu_content + ", mem_nick=" + mem_nick + ", writedate=" + writedate
				+ ", like_total=" + like_total + "]";
	}
	
	

}
