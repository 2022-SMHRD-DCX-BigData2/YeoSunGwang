package com.smhrd.domain;

public class BoardVO {

	// 필드명 = 속성(property)
	private String board_title;
	private String board_content;
	private int board_num;
	private String board_date;
	private int Like_total;
	private int travel_admin;
	private int category_admin;
	private String map_link;
	private String img_link;
	private int comments_total;
	
	



	// getter, setter
	public int getComments_total() {
		return comments_total;
	}
	
	public void setComments_total(int comments_total) {
		this.comments_total = comments_total;
	}
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

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	public int getLike_total() {
		return Like_total;
	}

	public void setLike_total(int like_total) {
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

	

	public String getMap_link() {
		return map_link;
	}

	public void setMap_link(String map_link) {
		this.map_link = map_link;
	}

	public String getImg_link() {
		return img_link;
	}

	public void setImg_link(String img_link) {
		this.img_link = img_link;
	}

	public BoardVO() {
		super();
	}
	
	// 생성자
	public BoardVO(String board_title, String board_content, int board_num, String board_date, int like_total,
			int travel_admin, int category_admin, String map_link, String img_link) {
		super();
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_num = board_num;
		this.board_date = board_date;
		this.Like_total = like_total;
		this.travel_admin = travel_admin;
		this.category_admin = category_admin;
		this.map_link = map_link;
		this.img_link = img_link;
	}
	
	
	// 생성자
	public BoardVO(String board_title) {
		super();
		this.board_title = board_title;
	}

	//toString
	@Override
	public String toString() {
		return "Board [board_title=" + board_title + ", board_content=" + board_content + ", board_date=" + board_date
				+ ", " + "Like_total=" + Like_total + ", travel_admin=" + travel_admin + ", category_admin="
				+ category_admin + "map_link=" + map_link + "img_link=" + img_link + "]";
	}
	
	public String check() {
		return "가져오는값 Board [board_title=" + board_title + "]";
	}

}
