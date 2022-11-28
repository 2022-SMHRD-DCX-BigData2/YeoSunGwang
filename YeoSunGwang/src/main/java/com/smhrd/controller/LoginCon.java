package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Login Con]");	
		// 0. POST방식 인코딩 - "UTF-8"
		request.setCharacterEncoding("UTF-8");
		
		// 1. email,pw 파라미터 수집
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		
		// 2. 받아온 값을 Member객체에 담아주기
		Member login = new Member(email, pw);
		// 만약에 값을 확인하고 싶으면 (진짜로 객체에 잘 담겨 있는지)
		System.out.println(login.toString());
		
		// 3. DAO 객체 생성, 일 할 메소드 만들기
		MemberDAO dao = new MemberDAO();
		Member loginMember = dao.selectMember(login);
		
		// 4.MemberMapper.xml에서 SQL 
		
		// 5. 명령 후 처리
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			System.out.println("LoginCon : 로그인 성공!");
		} else {
			System.out.println("LoginCon : 로그인 실패!");
		}
		response.sendRedirect("main.jsp");
	}

}
