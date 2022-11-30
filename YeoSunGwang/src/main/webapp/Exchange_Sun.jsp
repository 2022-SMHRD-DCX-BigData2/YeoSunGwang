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
	<!-- 상단바 끝 -->
	<div id="wrap" class="My1">
		<div id="High_nav">
			<h1 id="High_nav_1">Exchange Point</h1>
		</div>
		<section>
			<div id="wrap1">
				<br>
				<button onclick="location.href='Exchange_Yeosu.jsp'";>여 수
				</button>
				<button onclick="location.href='Exchange_Sun.jsp'";>순 천</button>
				<button onclick="location.href='Exchange_Gwang.jsp'";>광 양</button>
			</div>
		</section>

		<div id="MAIN11">
			<section class="posts11">
				<article>

					<div id="img11">
						<img src="images/여수 상품권 10,000.jpg">
					</div>

					<div id="Exchange_div">
						<header>
							<h2>여수 지역 상품권 5,000원 권</h2>
						</header>

						<p>🎟️여수 지역에서만 사용 가능합니다.</p>
						<ul class="actions special">
							<li><a href="#" class="button" onclick="warning()">발급</a></li>
						</ul>

					</div>
				</article>

				<article>

					<div id="img11">
						<img src="images/여수 상품권 10,000.jpg">
					</div>

					<div id="Exchange_div">
						<header>
							<h2>여수 지역 상품권 10,000원 권</h2>
						</header>

						<p>🎟️여수 지역에서만 사용 가능합니다.</p>
						<ul class="actions special">
							<li><a href="#" class="button" onclick="warning()">발급</a></li>
						</ul>

					</div>
				</article>

				<article>

					<div id="img11">
						<img src="images/여수 상품권 10,000.jpg">
					</div>

					<div id="Exchange_div">
						<header>
							<h2>여수 지역 상품권 30,000원 권</h2>
						</header>

						<p>🎟️여수 지역에서만 사용 가능합니다.</p>
						<ul class="actions special">
							<li><a href="#" class="button" onclick="warning()">발급</a></li>
						</ul>

					</div>
				</article>

				<article>

					<div id="img11">
						<img src="images/여수 상품권 10,000.jpg">
					</div>

					<div id="Exchange_div">
						<header>
							<h2>여수 지역 상품권 5,000원 권</h2>
						</header>

						<p>🎟️여수 지역에서만 사용 가능합니다.</p>
						<ul class="actions special">
							<li><a href="#" class="button" onclick="warning()">발급</a></li>
						</ul>

					</div>
				</article>

				<article>

					<div id="img11">
						<img src="images/여수 상품권 10,000.jpg">
					</div>

					<div id="Exchange_div">
						<header>
							<h2>여수 지역 상품권 10,000원 권</h2>
						</header>

						<p>🎟️여수 지역에서만 사용 가능합니다.</p>
						<ul class="actions special">
							<li><a href="#" class="button" onclick="warning()">발급</a></li>
						</ul>

					</div>
				</article>

				<article>

					<div id="img11">
						<img src="images/여수 상품권 10,000.jpg">
					</div>

					<div id="Exchange_div">
						<header>
							<h2>여수 지역 상품권 30,000원 권</h2>
						</header>

						<p>🎟️여수 지역에서만 사용 가능합니다.</p>
						<ul class="actions special">
							<li><a href="#" class="button" onclick="warning()">발급</a></li>
						</ul>

					</div>
				</article>
			</section>
		</div>
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

	<script>
		function warning() {
			// 경고
			Swal.fire({
				icon : 'success',
				title : '코드가 발급되었습니다.\n상품권발급내역을\n확인하세요.'
			})
		}

		function needlogin() {
							Swal.fire({
								icon: 'error',
								title: '로그인 후 \n 이용할 수 있습니다!',
							})
						}
	</script>
</body>
</html>