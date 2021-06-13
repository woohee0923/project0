<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="utf-8">
 <style>
 	.login-name{
 		color:#86E57F;
 		text-align: center;
 	}
	input{
 		  display:block;
  		padding:50px;
	}
	input[type=submit]{
 	 	  border-radius: 10px;
      border-color: #ebedee;
  		margin-left: auto; margin-right: auto;
  		color:white;
  		padding:1em;
      width: 50%;
  		background: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%);
	}

	form{
  		padding:5%;
  		background: white;
	}
	html{
		background-color: #e2ebf0;
	}
  .form_input
  {
    width: 17%;
    padding: 20px;
    margin-left: auto; margin-right: auto;
  }
	
 </style>


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
                                <div >
                                    <ul class="nav">
                                        <li><a href="../mainPage/mainPage.html">홈</a></li>
                                        <li class="active"><a href="../loginPage/loginPage.jsp">로그인</a></li>
                                        <li><a href="../joinPage/joinPage.jsp">회원가입</a></li>
                                        <%if(session==null || !request.isRequestedSessionIdValid()){ %>
                                        <li><a href="../loginPage/loginPlease.jsp">내 정보</a></li>
                                        <%} else { %>
                                        <li><a href="../myPage/myPage.jsp">내 정보</a></li>
                                        <%} %>
                                        <li><a href="../aboutPage/aboutPage.jsp">사이트 소개</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              </div>

	<form method="post" action="memberLogin.do" class="login-form">
	<h1 class="login-name">Log in</h1>
    <div class="form_input">
  	 <label for="username">Username or E-mail:</label>
  	 <input placeholder="Username or id" type="text" name="id" required>
  	 <label>Password:</label>
  	 <input placeholder="Password" type="password" name="pwd" required>
    </div>
  	<input type="submit" value="Log In">
  	<div style="text-align: center; margin-top: 30px">
  	<a href="../joinPage/joinPage.jsp">회원가입</a>
  	</div>
	</form>

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
                                <li><a href="../loginPage/sessionLogOut.jsp">Home :  </a></li>
                                <li><a href="../aboutPage/aboutPage.jsp">: About</a></li>
                            </ul>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
</body>