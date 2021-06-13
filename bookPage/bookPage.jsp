<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String url = "jdbc:mysql://localhost/project?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root"; 
	String passwd = "root"; 
	Connection con = null;
	String sql = "select * from question order by rand() limit 1";
	PreparedStatement pstmt = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, user, passwd); 
	
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
  <title>bookPage</title>
  <link rel="stylesheet" href="./style.css">
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-responsive.css">
  <link rel="stylesheet" href="css/custom-styles.css">

</head>
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
                                <div >
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
<div class="cover">
  <div class="book">
  <label for="page-1"  class="book__page book__page--1">
    <img src="./img/bg.jpg" alt="">
  </label>
  
  <label for="page-2" class="book__page book__page--4">
    <div class="page__content" style="">
      <h1 class="page__content-title">Answer</h1>
        <div class="page__content-text">
        <%
        while (rs.next())
        {String question = rs.getString("question");
		%>
          <p style="text-align: center;"> <%out.println(question);}%>
        </div>
        <img src="./img/bg3.jpg" alt="" style="margin-top:50px;">
    </div>
  </label>
    
  <!-- Resets the page -->
  <input type="radio" name="page" id="page-1"/>
    
  <!-- Goes to the second page -->
  <input type="radio" name="page" id="page-2"/>
  <label class="book__page book__page--2">
    <div class="book__page-front">
      <div class="page__content">
        <h1 class="page__content-book-title">해결책</h1>
        <h2 class="page__content-author">결과를 보려면 책을 넘겨주세요.</h2>
        
        <div class="page__content-copyright">
          <p>By SHS</p>
        </div>
      </div>
    </div>
    <div class="book__page-back">
      <div class="page__content">
        <table class="page__content-table">
          <img src="./img/bg4.png" alt="">
          <tr>
            <td align="left">"Be thankful for what you have</td>
          </tr>
          <tr>
            <td align="left">"you'll end up having more."</td>
          </tr>
          <tr>
            <td align="left">If you concentrate on what </td>
          </tr>
          <tr>
            <td align="left">you don't have, you will never,</td>
          </tr>
          <tr>
            <td align="left">ever have enough"</td>
          </tr>
        </table>
      </div>
    </div>
  </label>
</div>
</div>
<!-- partial -->
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
  <script  src="./script.js"></script>
	
</body>
</html>