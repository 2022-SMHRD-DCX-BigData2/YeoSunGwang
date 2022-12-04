package com.comu.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ComuDAO;
import com.dto.ComuVO;

public class BoardViewAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String url = "view.jsp";
		String comu_num = request.getParameter("comu_num");
		ComuDAO cDao = new ComuDAO();
//		ComuVO cVo = cDao.selectOneBoardByNum(comu_num);
//		request.setAttribute("comu", cVo);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
