package com.comu.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ComuDAO;
import com.dto.ComuVO;

public class BoardDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String comu_num=request.getParameter("comu_num");
		ComuDAO cDao= new ComuDAO();
		cDao.deleteBoard(comu_num);
		new BoardListAction().execute(request, response);
	}
}
