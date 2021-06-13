<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>myPage</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style type="text/css">
    	body{
    background:#f5f5f5;
    margin-top:20px;}

.project-info-box {
  margin: 15px 0;
  background-color: #fff;
  padding: 30px 40px;
  border-radius: 5px;
}

.project-info-box p {
  margin-bottom: 15px;
  padding-bottom: 15px;
  border-bottom: 1px solid #d5dadb;
}

.project-info-box p:last-child {
  margin-bottom: 0;
  padding-bottom: 0;
  border-bottom: none;
}
img {
    width: 100%;
    max-width: 100%;
    height: auto;
    -webkit-backface-visibility: hidden;
}
.rounded {
    border-radius: 5px !important;
}

.project-info-box p {
    margin-bottom: 15px;
    padding-bottom: 15px;
    border-bottom: 1px solid #d5dadb;
}
p {
    font-family: "Barlow", sans-serif !important;
    font-weight: 300;
    font-size: 1rem;
    color: #686c6d;
    letter-spacing: 0.03rem;
    margin-bottom: 10px;
}
b, strong {
    font-weight: 700 !important;
}
    </style>
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-responsive.css">
  <link rel="stylesheet" href="css/custom-styles.css">
  <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<body>
	<%if(session==null || !request.isRequestedSessionIdValid()){%>
	<script>
	alert("로그인 해주세요.");
	session.invalidate();
	location.href='../loginPage/loginPage.jsp';
	</script> <% } else {%> 
  <div class="header-wrapper">
    <div class="site-header">
      <div class="container">
        <div class="site-name">
          <h1>SELF HEALING SERVICE</h1>
        </div>
      </div>
      <div class="container">
        <div class="menu">
          <div class="navbar">
            <div>
              <ul class="nav">
                <li><a href="../mainPage/mainPage.jsp">홈</a></li>
                <li><a href="../loginPage/sessionLogOut.jsp">로그아웃</a></li>
                <li><a href="../joinPage/joinPage.jsp">회원가입</a></li>
                <li class="active"><a href="../myPage/myPage.jsp">내 정보</a></li>
                <li><a href="../aboutPage/aboutPage.jsp">사이트 소개</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%String id = (String) session.getAttribute("id");
			String url = "jdbc:mysql://localhost/project?characterEncoding=UTF-8&serverTimezone=UTC";
			String user = "root"; 
			String passwd = "root"; 
			Connection con = null;
			String sql = "select * from member where id=?";
			String sql2 = "select * from saying where id=?";
			String sql3 = "select count(*) from saying where id=?";
			
			PreparedStatement pstmt = null;
			PreparedStatement pstmt2 = null;
			PreparedStatement pstmt3 = null;
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, passwd); 
			
			pstmt = con.prepareStatement(sql);
			pstmt2 = con.prepareStatement(sql2);
			pstmt3 = con.prepareStatement(sql3);
			
			pstmt.setString(1, id);
			pstmt2.setString(1, id);
			pstmt3.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			ResultSet rs2 = pstmt2.executeQuery();
			ResultSet rs3 = pstmt3.executeQuery();
			int count = 0;
	        while(rs3.next()) {
	        	count = rs3.getInt(1);
	        }
	        %>
<!---------------------------------------------->
<div class="container">
    <div class="row">
        <div class="col-md-7" style="margin-top: 50px;">
          <table>
              <td style="width: 20%">
              <%if(count <= 2) {%>
            	<img src="../img/myPage/first.jpg" alt="project-image" class="rounded" style="width: 90%;">
            	<%} else if (count <= 4) {%>
            	<img src="../img/myPage/second.jpg" alt="project-image" class="rounded" style="width: 90%;">
            	<%} else if (count <=6) {%>
            	<img src="../img/myPage/third.jpg" alt="project-image" class="rounded" style="width: 90%;">
            	<%} else if (count <=8) {%>
            	<img src="../img/myPage/fourth.jpg" alt="project-image" class="rounded" style="width: 90%;">
            	<%} else {%>
            	<img src="../img/myPage/fifth.jpg" alt="project-image" class="rounded" style="width: 90%;">
            	<%} %>
            	
          </td>
          <td>
          <div class="project-info-box">
          
                <p><b>아이디:</b> <%=id %></p>
                 
                <%
	        	while (rs.next())
	        	{	String sex = rs.getString("sex");
	        		String email = rs.getString("email");
	        		String phone = rs.getString("phone");
	        		%><p><b>성별:</b> <%=sex %> </p>
	        		<p><b>이메일:</b> <%=email %> </p>
	        		<p><b>전화번호:</b> <%=phone %> </p>
	        	<% } %>
	        	
	        	<p><b>명언 개수:</b> <%=count %>  </p>
	        	
                <p class="mb-0">
            </div>
          </td>
          </table>
          </div>

        <div class="col-md-7">
          <div class="project-info-box mt-0">
            <h5>나의 명언</h5>
              <div class="project-info-box">
                <%
				while (rs2.next()) {
				String saying = rs2.getString("saying"); %>
				<p> <%out.println(saying);%> </p>
				<% } %>
                <p class="mb-0"> </p>
              </div>
          </div><!-- / project-info-box -->
        </div><!-- / column -->
    </div>
</div>
<!------------------->
<div class="footer-wrapper">
                <div class="container">
                    <div class="footer-links">
                        <div class="row-fluid">
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>제작자</span><br>정우희 
                               </div>
                            </div>
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>소속:  </span><br>용인대학교
                               </div>
                            </div>
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>학과:   </span><br>
                                    컴퓨터과학과 
                               </div>
                            </div>
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>E-mail:  </span><br>
                                    202033030@yiu.ac.kr
                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="site-footer">
                        <div class="row-fluid">
                        
                        <div class="footer-menu span9">
                            <ul>
                                <li><a href="../mainPage/mainPage.jsp">Home :  </a></li>
                                <li><a href="../aboutPage/aboutPage.jsp">: About</a></li>
                            </ul>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
  <%} %>
</body>
</html>