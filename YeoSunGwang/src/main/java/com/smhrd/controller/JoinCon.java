package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

import oracle.sql.NUMBER;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[Join Con]");
		// 0. POST방식 인코딩 - "UTF-8"
		request.setCharacterEncoding("UTF-8");

		// 1. email,pw,tel,address 파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		Number memnum = Integer.parseInt(request.getParameter("memnum"));

		// 2. 받아온 값을 Member객체에 담아주기
		Member joinMember = new Member(id, pw, nick, name, email, memnum);
		// 만약에 값을 확인하고 싶으면 (진짜로 객체에 잘 담겨 있는지)
		System.out.println(joinMember.toString());

		// 3. DAO 객체 생성, 일 할 메소드 만들기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.insertMember(joinMember);

		// 4.MemberMapper.xml에서 SQL

		// 5. 명령 후 처리
		if (cnt > 0) {
			System.out.println("JoinCon : 회원가입 성공!");
			// 회원가입 성공하면 joinSuccess.jsp로 이동
			// response.sendRedirect("joinSuccess.jsp");
			RequestDispatcher rd = request.getRequestDispatcher("MAIN.html");
			request.setAttribute("join", id);
			rd.forward(request, response);

		} else {
			System.out.println("JoinCon : 회원가입 실패!");
			// 회원가입 실패하면 다시 회원가입 하게끔 main.jsp로 이동
			response.sendRedirect("MAIN.html");
		}

	}

}
