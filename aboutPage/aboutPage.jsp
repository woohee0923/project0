<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>aboutPage</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-responsive.css">
<link rel="stylesheet" href="css/custom-styles.css">
<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>

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
                                <div>
                                    <ul class="nav">
                                    <% 
                                    session = request.getSession(false);
                                    if(session==null || !request.isRequestedSessionIdValid()){
                                    	session.invalidate();%>
                                        <li><a href="../mainPage/mainPage.html">홈</a></li>
                                        <li><a href="../loginPage/loginPage.jsp">로그인</a></li>
                                    <% } 
                                     else { %>
                                    	<li><a href="../mainPage/mainPage.jsp">홈</a></li>
                                    	<li><a href="../loginPage/sessionLogOut.jsp">로그아웃</a></li>
                                     <% } %> 
                                        <li><a href="../joinPage/joinPage.jsp">회원가입</a></li>
                                        <li><a href="../myPage/myPage.jsp">내 정보</a></li>
                                        <li class="active"><a href="../aboutPage/aboutPage.jsp">사이트 소개</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>
<section id="video" class="home">
  <h1>Self Healing Service</h1>
  <h2>S.H.S 2021</h2>
</section>
<section id="main-content">
  <div class="text-intro">
    <h2>About</h2>
  </div>
  <div class="columns features"  style="margin-left: 80px">
    <div class="one-third first" style="color: #3CB371;  margin-right: -30px">
      <h3>사이트 구성</h3>
      <p>명언 작성하기<br>해결책 펼쳐보기<br>불멍, 물멍하기<br>피아노 연주하기</p>
    </div>

    <div class="one-third" style="color: #3CB371; margin-left: -30px">
      <h3>사이트 설명</h3>
      <p>사람들이 다양한 방법으로 힐링할 수 <Br> 있도록 여러 기능을 하나의 사이트로 제작</p>
    </div>

    <div class="one-third" style="color: #3CB371;">
      <h3>기획 목적</h3>
      <p>바쁘게 살아가는 현대인들이 자신에게 집중하는 시간을 가져보고, 그 순간의 소중함을 <br> 깨닫게 하기 위함. <br>
      코로나 바이러스 감염증 사태에 따라 집에서 <br>쉽게 힐링하는 시간을 가질 수 있도록 함.
      </p>
    </div>

  </div>
</section>

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
                            	<% 
                                    session = request.getSession(false);
                                    if(session==null || !request.isRequestedSessionIdValid()){
                                 %>
                                <li><a href="../mainPage/mainPage.html">Home :  </a></li>
                                <%} else { %>
                                <li><a href="../mainPage/mainPage.jsp">Home :  </a></li>
                                <%}  %>
                                <li><a href="../aboutPage/aboutPage.jsp">: About</a></li>
                            </ul>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
</body>
</html>