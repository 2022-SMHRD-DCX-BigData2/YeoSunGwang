package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

public class FindIDCon extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[FindID Con]");	
		// 0. POST방식 인코딩 - "UTF-8"
		request.setCharacterEncoding("UTF-8");
		
		// 1. name, email 파라미터 수집
		String mem_id = request.getParameter("id");
		String mem_pw = request.getParameter("pw");
		String mem_nick = request.getParameter("nick");
		String mem_name = request.getParameter("name");
		String mem_email = request.getParameter("email");
		
		// 2. 받아온 값을 Member객체에 담아주기
		Member FindId = new Member(mem_id, mem_pw, mem_nick, mem_name, mem_email);
		// 만약에 값을 확인하고 싶으면 (진짜로 객체에 잘 담겨 있는지)
		System.out.println(FindId.toString());
		
		// 3. DAO 객체 생성, 일 할 메소드 만들기
		MemberDAO dao = new MemberDAO();
		Member FindIdMember = dao.FindID(FindId);
		System.out.println(FindId.toString());
		// 4.MemberMapper.xml에서 SQL 
		
		// 5. 명령 후 처리
		if(FindIdMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("FindIdMember", FindIdMember);
			System.out.println("FindIDCon : 아이디 찾기 성공!");
		} else {
			System.out.println("FindIDCon : 아이디 찾기 실패@");
		}
		response.sendRedirect("FindIdResult.jsp");
	}

}
