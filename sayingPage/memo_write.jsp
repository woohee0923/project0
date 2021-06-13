<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
 <head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("id");
	String saying = request.getParameter("saying");

	String url = "jdbc:mysql://localhost/project?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root"; 
	String passwd = "root"; 
	Connection con = null;
	String sql = "insert into saying(id, saying) values(?, ?)";
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, user, passwd); 
	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, saying);
	pstmt.executeUpdate();
	pstmt.close();
	con.close(); 
	//out.println("데이터 추가 성공");
%>
	<script>location.href = "sayingPage.jsp"; </script>

</body>
</html>