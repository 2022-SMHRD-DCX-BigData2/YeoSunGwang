package com.comu.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.ComuDAO;
import com.dto.ComuVO;

public class BoardWriteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		ComuVO cVo = new ComuVO();
		cVo.setMem_nick(request.getParameter("mem_nick"));
		cVo.setComu_title(request.getParameter("comu_title"));
		cVo.setComu_content(request.getParameter("comu_content"));
		cVo.setLocal_num(Integer.parseInt(request.getParameter("local_num")));
		cVo.setLike_total(Integer.parseInt(request.getParameter("like_total")));
		ComuDAO cDao = new ComuDAO();
		cDao.insertComu(cVo);
		new BoardListAction().execute(request, response);
	}
}
