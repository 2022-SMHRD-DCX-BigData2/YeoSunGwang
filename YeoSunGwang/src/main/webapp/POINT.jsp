<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<!--
	Photon by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
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
</head>

<body>
	<!-- 상단바 시작 -->
	<header id="header">
		<h1>
			<a href="MAIN.html"><img src="images/여순광.png" alt="logo"
				class="logo"></a>
		</h1>
		<nav class="links">
			<ul>
				<li><a href="MAIN.html">HOME</a></li>
				<!-- 홈화면 -->
				<li><a href="Board.html">COMMUNITY</a></li>
				<!-- 게시판 -->
				<li><a href="Exchange_Yeosu.html">VOUCHER</a></li>
				<!-- 포인트 교환 -->
				<li><a href="editMemInfo.html">MY PAGE</a></li>
				<!-- 마이 페이지 -->
			</ul>
		</nav>
		<nav class="links2">
			<ul>

				<!-- 비로그인 상태
				{{^sessionedUser}}
				<li><a href="Join.html">SIGN UP</a></li>
				<li><a href="Login.html">SIGN IN</a></li>
				{{/sessionedUser}}

				로그인 상태
				{{#sessionedUser}}
				<li><a href="MAIN.html">LOGOUT</a></li>
				{{/sessionedUser}} -->

				<li><a href="Join.html">SIGN UP</a></li>
				<li><a href="Login.html">SIGN IN</a></li>

			</ul>
		</nav>
	</header>
	<!-- 상단바 끝  -->
<body>
	<div id="wrap">
		<div id="High_nav">
			<h1 id="High_nav_1">My page</h1>
		</div>

		<div id="wrap1">
			<br>
			<button onclick="location.href='editMemInfo.html'";>회원 정보 수정</button>
			<button onclick="location.href='POINT.html'";>포인트 내역</button>
			<button onclick="location.href='VOUCHER.html'";>상품권 발급 내역</button>
			<button onclick="location.href='MyPost.html'";>나의 활동</button>
		</div>
		<table>
			<tr align="center"
				style="background-color: whitesmoke; font-weight: 600;">
				<td>NO.</td>
				<td>포인트 추가</td>
				<td>포인트 추가 내용</td>
				<td>포인트 사용</td>
				<td>포인트 사용 내역</td>
				<td>사용 일자</td>
				<td>현재 포인트</td>
			</tr>

			<tr align="center">
				<td>1</td>
				<!-- NO. -->
				<td>20p</td>
				<!-- 포인트 추가 -->
				<td>댓글</td>
				<!-- 포인트 추가 내용 -->
				<td>-</td>
				<!-- 포인트 사용 -->
				<td>-</td>
				<!-- 포인트 사용 내역 -->
				<td>2022-11-10</td>
				<!-- 사용 일자 -->
				<td>15000</td>
				<!-- 현재 포인트 -->
			</tr>

			<tr align="center">
				<td>2</td>
				<!-- NO. -->
				<td>10p</td>
				<!-- 포인트 추가 -->
				<td>좋아요</td>
				<!-- 포인트 추가 내용 -->
				<td>-</td>
				<!-- 포인트 사용 -->
				<td>-</td>
				<!-- 포인트 사용 내역 -->
				<td>2022-11-10</td>
				<!-- 사용 일자 -->
				<td>15010</td>
				<!-- 현재 포인트 -->
			</tr>

			<tr align="center">
				<td>3</td>
				<!-- NO. -->
				<td>10p</td>
				<!-- 포인트 추가 -->
				<td>좋아요</td>
				<!-- 포인트 추가 내용 -->
				<td>-</td>
				<!-- 포인트 사용 -->
				<td>-</td>
				<!-- 포인트 사용 내역 -->
				<td>2022-11-11</td>
				<!-- 사용 일자 -->
				<td>15020</td>
				<!-- 현재 포인트 -->
			</tr>

			<tr align="center">
				<td>4</td>
				<!-- NO. -->
				<td>-</td>
				<!-- 포인트 추가 -->
				<td>-</td>
				<!-- 포인트 추가 내용 -->
				<td>10000p</td>
				<!-- 포인트 사용 -->
				<td>순천 지역상품권 10,000원</td>
				<!-- 포인트 사용 내역 -->
				<td>2022-11-12</td>
				<!-- 사용 일자 -->
				<td>5020</td>
				<!-- 현재 포인트 -->
			</tr>

		</table>
	</div>

	<div class="ourfooter">
		<footer>
			<nav>
				<a href='#' target='_blank'>Blog</a> | <a href='#' target='_blank'>Github</a>
			</nav>
			<p>
				<span>팀장 : 이준혁</span><br /> <span>팀원 : 정지명 정상민 윤 열</span><br /> <span>Copyright
					2022. TEAM 놀러가조. 여기가 여순광? All Rights Reserved.</span>
			</p>
		</footer>
	</div>
</body>
</html>