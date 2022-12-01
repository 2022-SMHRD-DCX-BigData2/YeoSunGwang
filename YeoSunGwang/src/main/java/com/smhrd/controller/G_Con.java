package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.smhrd.domain.Board;
import com.smhrd.domain.BoardDAO;


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
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		int Like_total= Integer.parseInt(request.getParameter("Like_total"));
		int travel_admin = Integer.parseInt(request.getParameter("travel_admin"));
		int category_admin = Integer.parseInt(request.getParameter("category_admin"));
		
		
		Board boardG = new Board(board_title, board_content, board_num, board_date, Like_total, travel_admin, category_admin, mab_link);
		
		System.out.println(boardG.toString());
	
		BoardDAO dao = new BoardDAO();
		int cnt = dao.(boardG);
		
		
		
		
	}

}
