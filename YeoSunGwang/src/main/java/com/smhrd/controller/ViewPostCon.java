package com.smhrd.controller;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.BoardDAO;
import com.smhrd.domain.BoardVO;


public class ViewPostCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[ViewPostCon]");
		
			// 0. POST방식 인코딩 - "UTF-8"
			request.setCharacterEncoding("UTF-8");
				
			// 1. 파라미터 수집
//		    int board_num = Integer.parseInt(request.getParameter("board_num"));
			String board_title = request.getParameter("board_title");
			
			// 2. 받아온 값을 View객체에 담아주기
			BoardVO View = new BoardVO(board_title);
			// 만약에 값을 확인하고 싶으면 (진짜로 객체에 잘 담겨 있는지)
			System.out.println(View.check());
			
			// 3. DAO 객체 생성, 일 할 메소드 만들기
			BoardDAO dao = new BoardDAO();
			BoardVO ViewPost = dao.SelectPost(View);
		
			if(ViewPost != null) {
				HttpSession session = request.getSession();
				session.setAttribute("ViewPost", ViewPost);
				System.out.println("ViewPostCon : 성공!");
				response.sendRedirect("POST.jsp");
			} else {
				System.out.println("ViewPostCon : 실패@");
				response.sendRedirect("POST.jsp");
			}
	}

}
