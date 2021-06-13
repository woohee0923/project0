<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="utf-8">
 <style>
 	.join-name{
 		color:#86E57F;
 		text-align: center;
    padding-top: 10px;
 	}
  .form-input
  {
    width: 25%;
    padding: 40px;
    margin-left: auto; margin-right: auto;
  }
  
  form{
      padding:1%;
      background: white;
      height: 30em;
      margin: 6% auto;
      border-color: gray;
  }
	ul{ 
      list-style:none;  
      padding-left:0;
  }
  #signup label{
    float: left;
    width: 110px;
  }
  #signup input{
    margin-left: 10px;
    padding:5px;
  }
  .form-control{
    width: 200px;
  }
  input[type="submit"],input[type="reset"]{
    background: linear-gradient(to top, #ebbba7 0%, #cfc7f8 100%);
    border-radius: 15px;
    border-color: #ebedee;
  }
  .button{
    width: 100px;
    font-size: 20px;
    margin: 10px 30px;
  }
  label{
    font-weight: bold !important;
  }
  .twobutton{
     margin: 30px; 
     padding-left: 50px;
  }
 </style>


 <link rel="stylesheet" href="css/bootstrap.css">
 <link rel="stylesheet" href="css/bootstrap-responsive.css">
 <link rel="stylesheet" href="css/custom-styles.css">
 <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>

 </head>

 <body>
<%session.invalidate(); %>
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
                                        <li><a href="../loginPage/loginPage.jsp">로그인</a></li>
                                        <li  class="active"><a href="../joinPage/joinPage.jsp">회원가입</a></li>
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

	 <form action="memberInsert.do" method="post" id="signup">
    <h1 class="join-name">Join</h1>
    <div class="form-input">
    <ul>
      <li>
        <label>아이디</label>
          <input type="text" class="form-control" name="id" required>  
        </li>
        <li>
          <label>비밀번호</label>
          <input type="password" class="form-control" name="pwd" required>  
        </li>
        <li>
          <label>비밀번호 확인</label>
          <input type="password" class="form-control" name="pwd2" required>
        </li>
        <li>
          <label>이메일</label>
          <input type="email" class="form-control" name="email">
        </li>
        <li>
          <label>전화번호</label>
          <input type="tel" class="form-control" name="tel" placeholder="- 빼고 입력해주세요."> 
        </li>
        <li>
          <label>성별</label>
          <input type="radio" name="sex" value="male">남 
          <input type="radio" name="sex" value="female">여 
        </li>
        <li class="twobutton">
          <input type="submit" value="등록" class="button">
          <input type="reset"value="취소" class="button">
        </li>
      </ul>
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