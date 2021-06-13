package com.dev.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dev.service.MemberService;

public class MemberLoginController implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		MemberService s = MemberService.getInstance();
		boolean result = s.login(id, pwd);
		String path = null;
		PrintWriter out = response.getWriter();
		
		if(result)
		{
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			path ="../myPage/myPage.jsp";
			HttpUtil.forward(request, response, path);
		}
		else
		{			 
			out.println("<script> alert('계정 정보가 없습니다.'); location.href='../joinPage/joinPage.jsp';</script>");
			out.close();
			path ="../joinPage/joinPage.jsp";
		}
		
	}

}
