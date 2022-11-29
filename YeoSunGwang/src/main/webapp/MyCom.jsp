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
	<div id="wrap" class="My1">

		<div id="High_nav">
			<h1 id="High_nav_1">My page</h1>
		</div>

		<section>
			<div id="wrap1">
				<br>
				<button onclick="location.href='editMemInfo.html'";>회원 정보
					수정</button>
				<button onclick="location.href='POINT.html'";>포인트 내역</button>
				<button onclick="location.href='VOUCHER.html'";>상품권 발급 내역</button>
				<button onclick="location.href='MyPost.html'";>나의 활동</button>
			</div>
			<nav class="links2" style="margin-bottom: 4em;">
				<ul>
					<li><a href="MyPost.html">내가 쓴 글 보기</a></li>
					<!-- 홈화면 -->
					<li><a href="MyCom.html"
						style="font-weight: bold; color: #2EBAAE; text-decoration: underline; text-underline-position: under;">내가
							쓴 댓글 보기</a></li>
					<!-- 포인트 교환 -->
					<li><a href="MyLike.html">좋아요 누른 글 보기</a></li>
					<!-- 마이 페이지 -->
				</ul>
			</nav>
		</section>

		<table style="border: 1px solid whitesmoke;" id="boardtable">
			<tr align="center">
				<td>NO.</td>
				<td>말머리</td>
				<td align="left" style="width: 60%; text-align: center;">제목</td>
				<td>글쓴이</td>
				<td>등록일</td>
				<td>좋아요❤️</td>
			</tr>

			<tr align="center">
				<td>001</td>
				<td>여수</td>
				<td align="left"><a href="view.html">여기 맛있어요</a></td>
				<td>광양대부호 정상민</td>
				<td>2022-11-24</td>
				<td>2<i class="fa-solid fa-heart" style="color: red;"></i></td>
			</tr>

			<tr align="center">
				<td>002</td>
				<td>광양</td>
				<td align="left"><a href="view.html">광양 대부호가 정상민씨라구요?</a></td>
				<td>순대 죽돌이 윤 열</td>
				<td>2022-11-26</td>
				<td>6<i class="fa-solid fa-heart" style="color: red;"></i></td>
			</tr>
		</table>
	</div>

	<footer
		style="display: flex; flex-direction: column; align-items: center; background-color: #F3F1EA;">
		<div class="pagination" style="border-color: black;">
			<a href="#" class="page active">1</a> <a href="#" class="page active">2</a>
			<a href="#" class="page active">3</a> <a href="#" class="page active">4</a>
			<a href="#" class="page active">5</a> <a href="#" class="next">Next</a>
		</div>
	</footer>

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