package com.comu.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ComuDAO;
import com.dto.ComuVO;
import com.smhrd.domain.Member;

public class BoardUpdateAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ComuVO cVo = new ComuVO();
		cVo.setLocal_num(Integer.parseInt(request.getParameter("local_num")));
		cVo.setMem_nick(request.getParameter("mem_nick"));
		cVo.setComu_title(request.getParameter("comu_title"));
		cVo.setComu_content(request.getParameter("comu_content"));
		ComuDAO cDao = new ComuDAO();
		cDao.updateBoard(cVo);
		new BoardListAction().execute(request, response);
		
	}		
}
