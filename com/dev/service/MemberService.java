package com.dev.service;


import com.dev.dao.MemberDAO;
import com.dev.vo.MemberVO;

public class MemberService {
	private static MemberService service = new MemberService();
	public MemberDAO dao = MemberDAO.getInstance();
	private MemberService() {}
	
	public static MemberService getInstance()
	{
		return service;
	}
	
	public void memberInsert(MemberVO member)
	{
		dao.memberInsert(member);
	}

	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		return dao.login(id,pwd);
	}

}
