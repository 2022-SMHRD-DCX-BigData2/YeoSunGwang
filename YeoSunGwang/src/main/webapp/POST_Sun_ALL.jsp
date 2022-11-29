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
<script src="https://kit.fontawesome.com/7208daee16.js"
	crossorigin="anonymous"></script>
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

	<div id="wrap" class="My1">
		<div id="High_nav">
			<h1 id="Exchange_nav_1">Suncheon</h1>
		</div>

		<div id="Middle_nav">
			<ul>
				<br>
				<li><a href="POST_Sun_ALL.html"
					style="font-weight: bold; color: #2EBAAE; text-decoration: underline; text-underline-position: under;">all</a></li>
				<li><a href="POST_Sun_REST.html">RESTAURANT</a></li>
				<li><a href="POST_Sun_CAFE.html">CAFE</a></li>
				<li><select name="local" id="local"
					onchange="if(this.value) location.href=(this.value);">
						<option value="POST_Sun_ALL.html">순천</option>
						<option value="POST_Yeo_ALL.html">여수</option>
						<option value="POST_Gwang_ALL.html">광양</option>
				</select></li>
				<li><a href="POST_Sun_TOUR.html">tour Spot</a></li>
			</ul>
		</div>

		<!-- 게시글(POST) -->
		<div id="MAIN11">
			<div class="posts11">
				<article>
					<div id="img11">
						<a href="POST.html" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.html" style="text-decoration: none;"> &nbsp;
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
						<a href="POST.html" class="image fit"><img
							src="images/Winter_Sun.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.html" style="text-decoration: none;"> &nbsp;
									순천 송광사</a>
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
						<a href="POST.html" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.html" style="text-decoration: none;"> &nbsp;
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
						<a href="POST.html" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.html" style="text-decoration: none;">여수 돌산
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
						<a href="POST.html" class="image fit"><img
							src="images/Yeo_모이핀.png"></a>
					</div>

					<div id="post_in">

						<div id="com_like">
							<p>
								<a href="POST.html" style="text-decoration: none;">여수 돌산
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