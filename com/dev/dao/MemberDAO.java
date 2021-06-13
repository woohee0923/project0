package com.dev.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dev.vo.MemberVO;

public class MemberDAO {
	private static MemberDAO dao = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance()
	{
		return dao;
	}
	
	public Connection connect() {
		Connection conn = null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
		}catch(Exception e) {
			System.out.print("MDAO:connect"+e);
		}
		return conn;
	}
	public void close(Connection conn, PreparedStatement pstmt)
	{
		if(pstmt != null)
		{
			try {
				pstmt.close();
			}catch(Exception e) {
				System.out.print("Pstmt close error" +e);
			}
		}
		if(conn != null)
		{
			try {
				conn.close();
			}catch(Exception e)
			{
				System.out.print("Conn close error"+e);
			}
		}
	}
	public void close(Connection conn, PreparedStatement pstmt, ResultSet rs)
	{
		if(rs != null)
		{
			try {
				rs.close();
			}catch(Exception e) {
				System.out.print("rs close error" +e);
			}
		}
		close(conn,pstmt);
	}
	public void memberInsert(MemberVO member)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?);");
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPwd());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getTel());
			pstmt.setString(5, member.getSex());
			pstmt.executeUpdate();
		}catch(Exception e)
		{
			System.out.print("MDAO:mInsert"+e);
		}finally {
			close(conn,pstmt);
		}
	}
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		boolean result = false;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			conn = connect();
			pstmt = conn.prepareStatement("select * from member where id = ? and pwd = ?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next())
			{
				result = true;
			}
			else 
				result = false;
			
		}catch(Exception e)
		{
			System.out.print("login error" + e);

		}
		finally
		{
			close(conn,pstmt,rs);
		}
		return result;
	}
}
