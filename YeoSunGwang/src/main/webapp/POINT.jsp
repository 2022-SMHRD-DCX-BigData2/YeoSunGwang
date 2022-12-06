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

<body>
	<div id="wrap">
		<div id="High_nav">
			<h1 id="High_nav_1">My page</h1>
		</div>

		<div id="wrap1">
			<br>
			<button onclick="location.href='editMemInfo.jsp'";>회원 정보 수정</button>
			<button onclick="location.href='POINT.jsp'";>포인트 내역</button>
			<button onclick="location.href='VOUCHER.jsp'";>상품권 발급 내역</button>
			<button onclick="location.href='MyPost.jsp'";>나의 활동</button>
		</div>
		<table>
			<tr align="center"
				style="background-color: whitesmoke; font-weight: 600;">
				<td>NO.</td>
				<td>포인트 추가</td>
				<td>포인트 추가 내용</td>
				<td>포인트 사용</td>
				<td>포인트 사용 내역</td>
				<td>추가/사용 일자</td>
				<td>현재 포인트</td>
			</tr>

			<tr align="center">
				<!-- NO. -->
				<td>1</td>
				
				<!-- 포인트 추가 -->
				<td>10550</td>
				
				<!-- 포인트 추가 내용 -->
				<td>테스트 포인트적립</td>
				
				<!-- 포인트 사용 -->
				<td>-</td>
				
				<!-- 포인트 사용 내역 -->
				<td>-</td>
				
				<!-- 사용 일자 -->
				<td>2022-12-05</td>
				
				<!-- 현재 포인트 -->
				<td>10550</td>
			</tr>
	
			<tr align="center">
				<!-- NO. -->
				<td>2</td>
				
				<!-- 포인트 추가 -->
				<td>-</td>
				
				<!-- 포인트 추가 내용 -->
				<td>-</td>
				
				<!-- 포인트 사용 -->
				<td>10,000</td>
				
				<!-- 포인트 사용 내역 -->
				<td>순천지역 상품권 10,000원권</td>
				
				<!-- 사용 일자 -->
				<td>2022-12-06</td>
				
				<!-- 현재 포인트 -->
				<td>550</td>
			</tr>
	
			
			<!-- 			
			<tr align="center">
				<td>2</td>  ->NO.
				<td>10p</td> ->포인트 추가
				<td>좋아요</td> ->포인트 추가 내용
				<td>-</td> ->포인트 사용
				<td>-</td> ->포인트 사용 내역
				<td>2022-11-10</td> ->사용 일자
				<td>15010</td> ->현재 포인트
			</tr> 
			-->
			

		</table>
	</div>

	<div class="ourfooter">

		<div sytle="margin-top: 1em;">
			<p style="background-color: whitesomke; text-align: center;">
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