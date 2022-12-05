<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
   Member loginMember = (Member)session.getAttribute("loginMember");
%>

<html>


<head>
<title>여기가 여순광?</title>
<meta charset="UTF-8" />
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

<body>
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
			<li><a href="BoardServlet?command=board_list">COMMUNITY</a></li>
			
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

	<div id="wrap" class="My1">
		<div id="High_nav">
			<h1 id="High_nav_1">COMMUNITY</h1>
		</div>


		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title" style="font-weight: bold;">${comu.comu_title}</div>

				<div class="info">
					<dl>
						<dt>번호</dt>
						<dd>${comu.comu_num}</dd>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>${comu.mem_nick}</dd>
					</dl>
					<dl>
						<dt>좋아요</dt>
						<dd><button>${comu.like_total}</button></dd>
					</dl>
				</div>
				<div class="cont"
					style="background-color: white; border: 1px solid;">
					${comu.comu_content}
				</div>
			</div>
			<div class="bt_wrap">
				<input type="button" value="목록" 
				style="font-size: 0.85rem; border: 1px solid black; padding: 0 1.8em; background: white; color: black; margin-right: 1%;"
				onclick="location.href='BoardServlet?command=board_list'">
				<% if(loginMember != null){%>
				<if test= "${comu.mem_nick} == ${comu.mem_nick}">
				<input type="submit" value="수정" onclick="location.href='BoardServlet?command=board_update_form&comu_num=${comu.comu_num}'" 
				style="font-size: 0.85rem; border: 1px solid black; padding: 0 1.8em; background: #000; color: white; margin-left: 1%;">
				</if>
				<%} else { %>
				<%} %>
			</div>
		</div>

	</div>

	<div class="ourfooter">

		<div sytle="margin-top: 1em;">
			<p style="background-color: whitesomke; text-align: center; margin-top: 1em;">
				<span>Copyright 2022. TEAM 놀러가조. 여기가 여순광? All Rights Reserved.</span>
			</p>
		</div>

	</div>

	<script>
		function needlogin() {
			Swal.fire({
				icon: 'error',
				title: '로그인 후 \n 이용할 수 있습니다!',
			})
		}
	</script>
	

</body>

</html>