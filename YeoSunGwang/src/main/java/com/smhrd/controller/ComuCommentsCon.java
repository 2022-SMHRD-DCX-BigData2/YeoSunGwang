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

public class ComuCommentsCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("[Comu Comments Con]");
		// 0. POST방식 인코딩 - "UTF-8"
		request.setCharacterEncoding("UTF-8");
		
		// 1. 파라미터 수집
		int comu_num = Integer.parseInt(request.getParameter("comu_num"));
		String comments = request.getParameter("comments");
		String mem_nick = request.getParameter("mem_nick");
		int mem_num = Integer.parseInt(request.getParameter("mem_num"));
		int board_num = Integer.parseInt(request.getParameter("board_num"));
		
		Comments insertComuComments = new Comments(mem_num, board_num, comments, mem_nick, comu_num);
		
		// 만약에 값을 확인하고 싶으면 (진짜로 객체에 잘 담겨 있는지)
		System.out.println(insertComuComments.toString());
		
		CommentsDAO dao2 = new CommentsDAO();
		int cnt2 = dao2.insertComuComments(insertComuComments);
		
		if (cnt2 > 0) {
			System.out.println("CommentsCon : 커뮤 댓글 등록 성공!");
			RequestDispatcher rd = request.getRequestDispatcher("Board.jsp");
			request.setAttribute("comments", mem_num);
			rd.forward(request, response);
			
			HttpSession session = request.getSession();
			session.setAttribute("insertComuComments", insertComuComments);
			
		} else {
			System.out.println("CommentsCon : 커뮤 댓글 등록 실패!");
			response.sendRedirect("Board.jsp");
		}

	}

}
