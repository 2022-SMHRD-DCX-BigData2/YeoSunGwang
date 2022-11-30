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

	<div id="wrap" class="My1">
		<div id="High_nav">
			<h1 id="Exchange_nav_1">Yeosu</h1>
		</div>

		<div id="Middle_nav">
			<ul>
				<br>
				<li><a href="POST_Yeo_ALL.jsp">all</a></li>
				<li><a href="POST_Yeo_REST.jsp">RESTAURANT</a></li>
				<li><a href="POST_Yeo_CAFE.jsp">CAFE</a></li>
				<li><select name="local" id="local"
					onchange="if(this.value) location.href=(this.value);">
						<option value="POST_Yeo_ALL.jsp">여수</option>
						<option value="POST_Gwang_ALL.jsp">광양</option>
						<option value="POST_Sun_ALL.jsp">순천</option>
				</select></li>
				<li><a href="POST_Yeo_TOUR.jsp"
					style="font-weight: bold; color: #2EBAAE; text-decoration: underline; text-underline-position: under;">tour
						Spot</a></li>
			</ul>
		</div>

		<!-- 게시글(POST) -->
		<div id="MAIN11">
			<div class="posts11">
				<article>
					<div id="img11">
						<a href="POST.jsp" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.jsp" style="text-decoration: none;"> &nbsp;
									여수 돌산 이쁜카페 MOI FIN</a>
							</p>
							<ul>
								<li><i class="fa-solid fa-comment"></i> 12</li>
								<li><a href=""><i class="fa-regular fa-heart"></i></a> 12</li>
							</ul>
						</div>

						<div id="com_like1">
							<ul style="font-size: 1.3em">
								<li><span class="tooltip" style="color: #EA2027;"><i
										class="fa-solid fa-camera"></i> <span class="tooltip-text">사진스팟</span></span></li>
								<!-- 사진스팟 표시 -->
								<li><a href="#"><span class="tooltip"><i
											class="fa-solid fa-map-location-dot"></i> <span
											class="tooltip-text">지도로 이동합니다</span></span></a></li>
								<!-- 지도로고 -->
							</ul>
						</div>
					</div>
				</article>

				<article>
					<div id="img11">
						<a href="POST.jsp" class="image fit"><img
							src="images/Yeo_하이클래스153.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.jsp" style="text-decoration: none;"> &nbsp;
									여수 하이클래스153</a>
							</p>
							<ul>
								<li><i class="fa-solid fa-comment"></i> 12</li>
								<li><a href=""><i class="fa-regular fa-heart"></i></a> 12</li>
							</ul>
						</div>

						<div id="com_like1">
							<ul style="font-size: 1.3em">
								<li><span class="tooltip" style="color: #EA2027;"><i
										class="fa-solid fa-camera"></i> <span class="tooltip-text">사진스팟</span></span></li>
								<!-- 사진스팟 표시 -->
								<li><a href="#"><span class="tooltip"><i
											class="fa-solid fa-map-location-dot"></i> <span
											class="tooltip-text">지도로 이동합니다</span></span></a></li>
								<!-- 지도로고 -->
							</ul>
						</div>
					</div>
				</article>

				<article>
					<div id="img11">
						<a href="POST.jsp" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.jsp" style="text-decoration: none;"> &nbsp;
									여수 돌산 이쁜카페 MOI FIN</a>
							</p>
							<ul>
								<li><i class="fa-solid fa-comment"></i> 12</li>
								<li><a href=""><i class="fa-regular fa-heart"></i></a> 12</li>
							</ul>
						</div>

						<div id="com_like1">
							<ul style="font-size: 1.3em">
								<li><span class="tooltip" style="color: #EA2027;"><i
										class="fa-solid fa-camera"></i> <span class="tooltip-text">사진스팟</span></span></li>
								<!-- 사진스팟 표시 -->
								<li><a href="#"><span class="tooltip"><i
											class="fa-solid fa-map-location-dot"></i> <span
											class="tooltip-text">지도로 이동합니다</span></span></a></li>
								<!-- 지도로고 -->
							</ul>
						</div>
					</div>
				</article>

				<article>
					<div id="img11">
						<a href="POST.jsp" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.jsp" style="text-decoration: none;">여수 돌산
									이쁜카페 MOI FIN</a>
							</p>
							<ul>
								<li><i class="fa-solid fa-comment"></i> 12</li>
								<li><a href=""><i class="fa-regular fa-heart"></i></a> 12</li>
							</ul>
						</div>

						<div id="com_like1">
							<ul style="font-size: 1.3em">
								<li><span class="tooltip" style="color: #EA2027;"><i
										class="fa-solid fa-camera"></i> <span class="tooltip-text">사진스팟</span></span></li>
								<!-- 사진스팟 표시 -->
								<li><a href="#"><span class="tooltip"><i
											class="fa-solid fa-map-location-dot"></i> <span
											class="tooltip-text">지도로 이동합니다</span></span></a></li>
								<!-- 지도로고 -->
							</ul>
						</div>
					</div>
				</article>

				<article>
					<div id="img11">
						<a href="POST.jsp" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.jsp" style="text-decoration: none;">여수 돌산
									이쁜카페 MOI FIN</a>
							</p>
							<ul>
								<li><i class="fa-solid fa-comment"></i> 12</li>
								<li><a href=""><i class="fa-regular fa-heart"></i></a> 12</li>
							</ul>
						</div>

						<div id="com_like1">
							<ul style="font-size: 1.3em">
								<li><span class="tooltip" style="color: #EA2027;"><i
										class="fa-solid fa-camera"></i> <span class="tooltip-text">사진스팟</span></span></li>
								<!-- 사진스팟 표시 -->
								<li><a href="#"><span class="tooltip"><i
											class="fa-solid fa-map-location-dot"></i> <span
											class="tooltip-text">지도로 이동합니다</span></span></a></li>
								<!-- 지도로고 -->
							</ul>
						</div>
					</div>
				</article>

				<article>

					<h1>빈 포스트</h1>
					<h1>빈 자리</h1>
					<h1>정 땅 민</h1>

				</article>

			</div>
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