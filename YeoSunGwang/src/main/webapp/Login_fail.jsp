<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>여기가 여순광?</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<link rel="stylesheet" href="assets/css/sweetalert2.min.css">
<script src="assets/js/sweetalert2.min.js"></script>
</head>

<body>
	<header style="display: flex; justify-content: center;">
		<h1>
			<a href="MAIN.jsp"><img src="images/여순광.png" alt="logo"></a>
		</h1>
	</header>

	<form action="LoginCon" method="Post" id="login-info">
		<div id="wrap" class="My1" style="background-color: #F4F4F4;">
			<div class="join_div">
				<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
				<ul>
					<div class="join_input">
						<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
						<li>아이디</li>
						<li><input type="text" name="id"></li> <br>
						<li>비밀번호</li>
						<li><input type="password" name="pw"></li> <br>
						<li style="margin-bottom: 2em; flex-direction: column;">
							<p style="margin: 0;">
								<input type="checkbox" name="login" value="keeplogin"
									class="login" onclick="keepLogin()">로그인 유지
							</p>
							<p style="margin: 0;">
								<input type="checkbox" name="login" value="autologin"
									class="login" onclick="autoLogin()">자동 로그인
							</p>
						</li>
						<button type="submit" id="login" value="login">
							<p>로그인</p>
						</button>
						<br> <span style="color: red; align-self: center;">아이디(로그인 전용 아이디) 또는 비밀번호를 잘못
							입력했습니다. <br>입력하신 내용을 다시 확인해주세요.</span>

						<ul class="find">
							<li><button type="button"
									onclick="location.href='Join.jsp'">
									<a>회 원 가 입</a>
								</button></li>
							<li><button type="button"
									onclick="location.href='FindId.jsp'">
									<a>아이디 찾기</a>
								</button></li>
							<li><button type="button"
									onclick="location.href='FindPw.jsp'">
									<a>비밀번호 찾기</a>
								</button></li>
						</ul>


					</div>
				</ul>
			</div>

		</div>
	</form>

	<script type="text/javascript">
    </script>
</body>

</html>