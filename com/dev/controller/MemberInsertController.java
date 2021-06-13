package com.dev.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dev.service.MemberService;
import com.dev.vo.MemberVO;

public class MemberInsertController implements Controller {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String sex = request.getParameter("sex");

		System.out.println(pwd);
		System.out.println(pwd2);
		if(!(pwd.equals(pwd2))) {
			response.sendRedirect("../joinPage/alert.jsp");
			
		}
		else {
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPwd(pwd);
		member.setEmail(email);
		member.setTel(tel);
		member.setSex(sex);
		
		MemberService service = MemberService.getInstance();
		service.memberInsert(member);
		
		response.sendRedirect("../loginPage/loginPage.jsp");
		}
		
		
	}

}
