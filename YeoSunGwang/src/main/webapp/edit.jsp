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
<script src="assets/js/main.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
</head>

<body>
	<!-- 상단바 끝 -->
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
	<!-- 상단바 끝 -->


	<div id="wrap">
		<div id="High_nav">
			<h1 id="High_nav_1">Edit Write</h1>
		</div>

		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt style="margin-top: 2%; width: 4%;">제목</dt>
						<dd>
							<input type="text" placeholder="제목 입력"
								style="margin-left: 5%; background-color: white; width: 97%;">
						</dd>
					</dl>
				</div>
				<div class="info">
					<dl>
						<dt style="margin-top: 2%;">말머리</dt>
						<dd>
							<select name="" id="" style="background-color: white;">
								<option>여수</option>
								<option>순천</option>
								<option>광양</option>
							</select>
						</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea placeholder="내용 입력" style="background-color: white;"></textarea>
				</div>
			</div>
			<div class="bt_wrap">
				<a href="Board.html" class="on">등록</a> <a href="Board.html">취소</a>
			</div>
		</div>
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