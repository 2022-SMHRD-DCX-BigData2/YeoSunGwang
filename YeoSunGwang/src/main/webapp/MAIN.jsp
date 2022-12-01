<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
   Member loginMember = (Member)session.getAttribute("loginMember");
%>

<html>


<head>
<title>여기가 여순광?</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<script src="assets/js/main.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="https://kit.fontawesome.com/7208daee16.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="assets/css/sweetalert2.min.css">
<script src="assets/js/sweetalert2.min.js"></script>
</head>

<body style="background:#f4f4f4;">
	<!-- 상단바 시작 -->
	<header id="header">
	<h1>
		<a href="MAIN.jsp"><img src="images/여순광.png" alt="logo"
			class="logo"></a>
	</h1>
	
		<div class="links">
		<ul>
			<!-- 홈화면 -->
			<li><a href="MAIN.jsp">HOME</a></li>
			
			<!-- 게시판 -->
			<li><a href="Board.jsp">COMMUNITY</a></li>
			
			<!-- 포인트 교환 -->
			<%if(loginMember == null) { %>
			<li><a onclick="needlogin()">VOUCHER</a></li>
			<%}else{ %>
			<li><a href="Exchange_Yeosu.jsp">VOUCHER</a></li>
			<%} %>
			
			<!-- 마이 페이지 -->
			<%if(loginMember == null) { %>
			<li><a onclick="needlogin()">MY PAGE</a></li>
			<%}else{ %>
			<li><a href="editMemInfo.jsp">MY PAGE</a></li>
			<%} %>
		</ul>
	</div>
	
	<div class="links2">
		<ul>
			<%if(loginMember == null) { %>
			<li><a href="Join.jsp">SIGN UP</a></li>
			<li><a href="Login.jsp">SIGN IN</a></li>
		</ul>
		<%}else{ %>
		<ul>
			<li><%= loginMember.getMem_nick()%> 님 환영합니다</li>
			<li><a href="LogoutCon">LOGOUT</a></li>
			<%} %>
		</ul>
	</div>
	</header>
	<!-- 상단바 끝 -->



	<!-- 메인-->
	<div id="wrap" class="My1"
		style="background-color: whitesmoke; margin-top: 5.3em; min-height: 80vh;">

		<div style="float: left; width: 33.333333%;">
			<figure class="snip1200"> <img src="images/Winter_Yeo.png"
				alt="">
			<p>관광의 도시 여수로 오세요</p>
			<figcaption>
			<p>
				<button id="hoverbutton" onclick="location.href='POST_Yeo_ALL.jsp'">CLICK</button>
			</p>
			<div class="heading">
				<h2>
					<span>여 &nbsp;&nbsp; 수</span>
				</h2>
			</div>
			</figcaption> </figure>
		</div>

		<div style="float: left; width: 33.333333%;">
			<figure class="snip1200"> <img src="images/Winter_Sun.png"
				alt="">
			<p>
				2023년 순천만 국제정원 박람회가 열립니다! <br /> 순천으로 오세요
			</p>
			<figcaption>
			<p>
				<button id="hoverbutton" onclick="location.href='POST_Sun_ALL.jsp'">CLICK</button>
			</p>
			<div class="heading">
				<h2>
					<span>순 &nbsp;&nbsp; 천</span>
				</h2>
			</div>
			</figcaption> </figure>
		</div>

		<div style="float: left; width: 33.333333%;">
			<figure class="snip1200"> <img src="images/Main_Gwang.png"
				alt="">
			<p>정상민의 광양으로 오세요!</p>
			<figcaption>
			<p>
				<button id="hoverbutton"
					onclick="location.href='POST_Gwang_ALL.jsp'">CLICK</button>
			</p>
			<div class="heading">
				<h2>
					<span>광 &nbsp;&nbsp; 양</span>
				</h2>
			</div>
			</figcaption> </figure>
		</div>

	</div>

	<div class="ourfooter">

		<div>
			<p style="background-color: white; margin-left: 1em;">
				<a href='#' target='_blank'
					style="font-size: 11px; margin: 0 20px 10px 0px;">Blog</a>l <a
					href='#' target='_blank'
					style="font-size: 11px; margin: 0 20px 10px 20px;">Github</a> <br>
				<span>팀장 : 이준혁</span><br /> <span>팀원 : 정지명 정상민 윤 열</span><br /> <span>Copyright
					2022. TEAM 놀러가조. 여기가 여순광? All Rights Reserved.</span>
			</p>
		</div>

	</div>



	<script>
		$(".hover").mouseleave(function() {
			$(this).removeClass("hover");
		});
		
        function needlogin() {
            Swal.fire({
                icon: 'error',
                title: '로그인 후 \n 이용할 수 있습니다!',
            })
        }
	</script>
</body>
</html>