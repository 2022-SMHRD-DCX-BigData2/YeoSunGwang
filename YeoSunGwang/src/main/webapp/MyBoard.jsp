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

<body>
	<!-- 상단바 시작 -->
	<header id="header">
	<h1>
		<a href="MAIN.jsp"><img src="images/여순광.png" alt="logo"
			class="logo"></a>
	</h1>
	<div class="links">
		<ul>
			<li><a href="MAIN.jsp">HOME</a></li>
			<!-- 홈화면 -->
			<li><a href="Board.jsp">COMMUNITY</a></li>
			<!-- 게시판 -->
			<li><a href="Exchange_Yeosu.jsp">VOUCHER</a></li>
			<!-- 포인트 교환 -->
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
			<h1 id="High_nav_1">My Write</h1>
		</div>

		<div>
			<table style="border: 1px solid whitesmoke;" id="boardtable">
				<tr align="center">
					<td>NO.</td>
					<td style="width: 5em;">말머리</td>
					<td align="left" style="width: 60%; text-align: center;">제목</td>
					<td>글쓴이</td>
					<td>등록일</td>
					<td>좋아요❤️</td>
				</tr>

				<tr align="center">
					<td>001</td>
					<td>말머리</td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td>광양대부호 정상민</td>
					<td>2022-11-24</td>
					<td>102<i class="fa-solid fa-heart" style="color: red;"></i></td>
				</tr>

				<tr align="center">
					<td></td>
					<td></td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr align="center">
					<td></td>
					<td></td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr align="center">
					<td></td>
					<td></td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr align="center">
					<td></td>
					<td></td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr align="center">
					<td></td>
					<td></td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>

				<tr align="center">
					<td></td>
					<td></td>
					<td align="left"><a href="view.jsp">여기가 여순광? 화이팅!!</a></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>

		<footer
			style="display: flex; flex-direction: column; align-items: center;">
			<div class="pagination" style="border-color: black;">
				<a href="#" class="page active">1</a> <a href="#"
					class="page active">2</a> <a href="#" class="page active">3</a> <a
					href="#" class="page active">4</a> <a href="#" class="page active">5</a>
				<a href="#" class="next">Next</a>
			</div>
		</footer>
	</div>
	<div class="ourfooter">
		<footer>
			<a href='#' target='_blank'>Blog</a> | <a href='#' target='_blank'>Github</a>
			<p>
				<span>팀장 : 이준혁</span><br /> <span>팀원 : 정지명 정상민 윤 열</span><br /> <span>Copyright
					2022. TEAM 놀러가조. 여기가 여순광? All Rights Reserved.</span>
			</p>
		</footer>
	</div>


</body>

</html>