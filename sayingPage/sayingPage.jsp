<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  .list {
  padding-top: 50px;
  padding-bottom: 100px;
  justify-content: center;
  color: gray;
  background-color: black;
  text-align: center;
  }
  body {background-color:#000!important; }

  input[type=submit] {
        background-color:#d3d3d3;
            text-align: center;
            width: 70px;
            height: 70px;
            height: 30px;
            font-size: 13px;
            font-weight:bold;
            outline: 5;
            border-color: white;
            border-style: solid;
            margin-left: 20px;
    }
    input[type=text] {
      width:500px;
      margin-top: 10px;
    }
  .button {
    padding-top: 50px;
    padding-left: 50px;
   
   
  }
  
  </style>
  <link rel="stylesheet" href="./style.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-responsive.css">
  <link rel="stylesheet" href="css/custom-styles.css">

</head>

<%
	String url = "jdbc:mysql://localhost/project?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root"; 
	String passwd = "root"; 
	Connection con = null;
	String sql = "select * from saying";
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, user, passwd); 
	
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	%>

<body>
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
                <li><a href="../myPage/myPage.jsp">내 정보</a></li>
                <li><a href="../aboutPage/aboutPage.jsp">사이트 소개</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- partial:index.partial.html -->
  <form method="post" action="memo_write.jsp">
  <div class="button">
    <input type="text" name="saying"></input>
    <input type="submit" value="등록" style="background: black; color:white; border-radius: 20px "></input>
  </div>
  </form>

	
  <ul class="list">
    <%
	while(rs.next()) {
		String id = rs.getString("id");
		String saying = rs.getString("saying"); %> 
		<li> <%out.println(id + " : " + saying);%> </li>
	<%}
	%>
  </ul>

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
                        
                        <div class="footer-menu span9" >
                            <ul>
                                <li><a href="../mainPage/mainPage.jsp">Home :  </a></li>
                                <li><a href="../aboutPage/aboutPage.jsp">: About</a></li>
                            </ul>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
</body>
</html>