package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.Member;
import com.smhrd.domain.MemberDAO;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[UpdateCon]");
		request.setCharacterEncoding("UTF-8");
		// 어떤 사람의 회원정보를 수정할지 email을 가져와야함
		// 세션에서 가져오기
		HttpSession session = request.getSession();
		Member loginMember = (Member) session.getAttribute("loginMember");
		String email = loginMember.getEmail();
		// 파라미터 수집
		// pw,tel,address
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");

		// 받아온 데이터를 Member객체에 담아주기
		Member update = new Member(email, pw, tel, address);

		// DAO에 일할 메소드 만들기
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(update);
		// 5. 명령 후 처리
		if (cnt > 0) {
			System.out.println("회원정보 수정 성공!");
			// 세션에 저장되어있는 정보가 수정이전의 로그인 정보이기 때문에
			// 같은 이름으로 덮어쓰기 해야한다.
			session.setAttribute("loginMember", update);
			response.sendRedirect("main.jsp");
		} else {
			System.out.println(" 회원정보 수정 실패!");
			// 회원가입 실패하면 다시 회원가입 하게끔 main.jsp로 이동
			response.sendRedirect("update.jsp");
		}

	}

}
