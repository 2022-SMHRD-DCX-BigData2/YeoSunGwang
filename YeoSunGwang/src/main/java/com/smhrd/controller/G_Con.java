package com.smhrd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.smhrd.domain.BoardDAO;
import com.smhrd.domain.BoardVO;

public class G_Con extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[G_Con]");
		// 0. POST방식 인코딩 - "UTF-8"
		request.setCharacterEncoding("UTF-8");

		String board_title = request.getParameter("board_title");
		String board_content = request.getParameter("board_content");
		String board_date = request.getParameter("board_date");
		String mab_link = request.getParameter("mab_link");
		String img_link = request.getParameter("img_link");
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int Like_total = Integer.parseInt(request.getParameter("Like_total"));
		int travel_admin = Integer.parseInt(request.getParameter("travel_admin"));
		int category_admin = Integer.parseInt(request.getParameter("category_admin"));

		List<BoardVO> boardList = new ArrayList<BoardVO>();
		BoardDAO dao = new BoardDAO();
		boardList =dao.G_ALL();
		
		
		
		

	}

}
