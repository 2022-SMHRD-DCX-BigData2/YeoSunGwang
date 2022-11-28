package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[DeleteCon]");
		//email 파라미터수집
		String email = request.getParameter("email");
		//DAO에 일할 메소드 만들기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.deleteMember(email);
		if(cnt>0) {
			System.out.println("회원정보삭제 성공!");
			response.sendRedirect("select.jsp");
			
			
		} else {
			System.out.println("회원정보삭제 실패!");
			// 회원가입 실패하면 다시 회원가입 하게끔 main.jsp로 이동
			response.sendRedirect("select.jsp");
		}
		
		
	}

}
