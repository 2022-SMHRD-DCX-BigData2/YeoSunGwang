package com.smhrd.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Comments;
import com.smhrd.domain.CommentsDAO;

public class CommentsCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[Comments Con]");
		// 0. POST방식 인코딩 - "UTF-8"
		request.setCharacterEncoding("UTF-8");

		// 1. 파라미터 수집
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		String comments = request.getParameter("comments");

		// 2. 받아온 값을 Comments객체에 담아주기
		Comments insertComments = new Comments(mem_num, comments);
		// 만약에 값을 확인하고 싶으면 (진짜로 객체에 잘 담겨 있는지)
		System.out.println(insertComments.toString());

		// 3. DAO 객체 생성, 일 할 메소드 만들기
		CommentsDAO dao = new CommentsDAO();
		int cnt = dao.insertComments(insertComments);

		if (cnt > 0) {
			System.out.println("CommentsCon : 등록 성공!");
			RequestDispatcher rd = request.getRequestDispatcher("POST.jsp");
			request.setAttribute("comments", mem_num);
			rd.forward(request, response);
			
			HttpSession session = request.getSession();
			session.setAttribute("insertComments", insertComments);
			
		} else {
			System.out.println("CommentsCon : 등록 실패!");
			response.sendRedirect("POST.jsp");
		}

	}
}
