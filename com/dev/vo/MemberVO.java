package com.dev.vo;

public class MemberVO {
	private String id;
	private String pwd;
	private String email;
	private String tel;
	private String sex;
	
	public String getId()
	{
		return id;
	}
	public void setId(String tId)
	{
		this.id = tId;
	}
	public String getPwd()
	{
		return pwd;
	}
	public void setPwd(String tPwd)
	{
		this.pwd = tPwd;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String tEmail)
	{
		this.email = tEmail;
	}
	public String getTel()
	{
		return tel;
	}
	public void setTel(String tTel)
	{
		this.tel = tTel;
	}
	public String getSex()
	{
		return sex;
	}
	public void setSex(String tSex)
	{
		this.sex = tSex;
	}
}
