<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	String url = "jdbc:mysql://localhost/project?characterEncoding=UTF-8&serverTimezone=UTC";
	String user = "root"; 
	String passwd = "root"; 
	Connection con = null;
	String sql = "select * from saying order by rand() limit 1";
	String sql2 = "select * from saying order by rand() limit 1";
	String sql3 = "select * from saying order by rand() limit 1";
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	PreparedStatement pstmt3 = null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection(url, user, passwd); 
	
	pstmt = con.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	pstmt2 = con.prepareStatement(sql2);
	ResultSet rs2 = pstmt2.executeQuery();
	pstmt3 = con.prepareStatement(sql3);
	ResultSet rs3 = pstmt3.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Insert title here</title>
<meta name="description" content="">
        <meta name="viewport" content="width=device-width">
       
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
                                <div class="nav-collapse collapse">
                                    <ul class="nav">
                                        <li class="active"><a href="../mainPage/mainPage.jsp">???</a></li>
                                        <li><a href="../loginPage/sessionLogOut.jsp">????????????</a></li>
                                        <li><a href="../joinPage/joinPage.jsp">????????????</a></li>
                                        <li><a href="../myPage/myPage.jsp">??? ??????</a></li>
                                        <li><a href="../aboutPage/aboutPage.jsp">????????? ??????</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                <div class="banner">
                    <div class="carousel slide" id="myCarousel">
                        <div class="carousel-inner">
                            <div class="item">
                                <img src="img/banner01.jpg" alt="">
                                <div class="carousel-caption">
                                <%
						        while (rs.next())
						        {
						        	String id = rs.getString("id");
						        	String saying = rs.getString("saying");
						        	
								%>
                                    <h1><%out.println(saying);%></h1>
                                    <h2>- <%out.println(id);%></h2>
                                    <% } %>
                                </div>
                            </div>
                            <div class="item">
                                <img src="img/banner02.jpg" alt="">
                                <div class="carousel-caption">
                                 <%
							     while (rs2.next())
							     {
							       	String id = rs2.getString("id");
							        String saying = rs2.getString("saying");
							        	
								%>
                                  <h1><%out.println(saying);%></h1>
                                  <h2>- <%out.println(id);%></h2>
                                  <% } %>
                                </div>
                            </div>
                            <div class="item active">
                                <img src="img/banner03.jpg" alt="">
                                <div class="carousel-caption">
                                <%
						        while (rs3.next())
						        {
						        	String id = rs3.getString("id");
						        	String saying = rs3.getString("saying");
						        	
								%>
                                  <h1><%out.println(saying);%></h1>
                                  <h2>- <%out.println(id);%></h2>
                                  <% } %>
                                </div>
                            </div>
                        </div>
                        <a data-slide="prev" href="#myCarousel" class="carousel-control left">???</a>
                        <a data-slide="next" href="#myCarousel" class="carousel-control right">???</a>
                    </div>
                </div>
                </div>
            </div>
            <div class="container">
                <div class="featured-blocks">
                    <div class="row-fluid">
                        <div class="span3">
                            <div class="block v-divider border">
                                <input type="checkbox" style="width:40px; height:40px;">
                                <h1>3??? ????????????</h1>
                                <p class="last">??? ?????? ??? ????????? ???????????????.</p>
                            </div>
                        </div>
                        <div class="span3">
                            <div class="block v-divider border">
                                <input type="checkbox" style="width:40px; height:40px;">
                                <h1>????????? ????????? ????????????</h1>
                                <p class="last">????????? ???????????? ????????? ??????????????????.</p>
                            </div>
                        </div>
                        <div class="span3">
                            <div class="block v-divider border">
                                <input type="checkbox" style="width:40px; height:40px;">
                                <h1>???????????? ??? ???????????????</h1>
                                <p class="last">???????????? ?????? ????????? ??????????????????.</p>
                            </div>
                        </div>
                        <div class="span3">
                            <div class="block no-border">
                                <input type="checkbox" style="width:40px; height:40px;">
                                <h1>????????? ?????? ??????</h1>
                                <p class="last">1???????????? ???????????? ?????? ??????????????????.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <table style="margin-left: auto; margin-right: auto;">
                <tr>
                    <td class="box-con">
                        <div class="user-info">
                             <h1>?????? ????????????</h1>
                             <img src="img/diary_img.jpg" alt="" class="image-spacing">
                             <p class="no-space">????????? ????????? ??????????<br>????????? ????????? ???????????????! </p>
                        </div>
                        <div class="read-more">
                            <a href="../sayingPage/sayingPage.jsp">????????????</a>
                        </div>
                    </td>
                    <td class="box-con">
                        <div class="user-info">
                             <h1>????????? ??????</h1>
                             <img src="img/solution_img.jpg" alt="" class="image-spacing">
                             <p class="no-space">????????? ????????????????<br>?????? ???????????????!</p>
                        </div>
                        <div class="read-more">
                            <a href="../questionPage/questionPage.html">????????????</a>
                        </div>
                    </td>
                    <td class="box-con">
                        <div class="user-info">
                             <h1>??????, ????????????</h1>
                             <img src="img/firewater_img.jpg" alt="" class="image-spacing">
                             <p class="no-space">?????? ????????? ????????????????<br>?????? ???????????? ??????????????? ???????????????!</p>
                        </div>
                        <div class="read-more">
                            <a href="../videoPage/videoPage.html">????????????</a>
                        </div>
                    </td>
                    <td class="box-con">
                        <div class="user-info">
                             <h1>?????? ????????????</h1>
                             <img src="img/piano_img.png" alt="" class="image-spacing">
                             <p class="no-space">???????????? ?????? ?????? ?????? ??????????<br>??????????????? ??????????????????!</p>
                        </div>
                        <div class="read-more">
                            <a href="../pianoPage/pianoPage.html">????????????</a>
                        </div>
                    </td>
                </tr>
            </table>

            <div class="footer-wrapper">
                <div class="container">
                    <div class="footer-links">
                        <div class="row-fluid">
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>?????????</span><br>????????? 
                               </div>
                            </div>
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>??????:  </span><br>???????????????
                               </div>
                            </div>
                            <div class="span3">
                                <div class="copy-rights">
                                    <span>??????:   </span><br>
                                    ?????????????????? 
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

       <script src="js/jquery-1.9.1.js"></script> 
<script src="js/bootstrap.js"></script>
<script>
$('#myCarousel').carousel({
    interval: 1800
});
</script>
	
</body>
</html>