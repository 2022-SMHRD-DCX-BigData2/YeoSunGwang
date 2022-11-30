<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% Member loginMember=(Member)session.getAttribute("loginMember"); %>

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
			<%if(loginMember==null) { %>
			<li><a onclick="needlogin()">MY PAGE</a></li>
			<%}else{ %>
			<li><a href="editMemInfo.jsp">MY PAGE</a></li>
			<%} %>
		</ul>
	</div>
	<div class="links2">
		<ul>
			<%if(loginMember==null) { %>
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

	<div id="wrap" style="display: flex; flex-direction: column;">

		<div id="High_nav">
			<h1 id="High_nav_1">My page</h1>
		</div>

		<div id="wrap1" style="margin-bottom: 4em;">
			<br>
			<button onclick="location.href='editMemInfo.jsp'">회원 정보 수정</button>
			<button onclick="location.href='POINT.jsp'">포인트 내역</button>
			<button onclick="location.href='VOUCHER.jsp'">상품권 발급 내역</button>
			<button onclick="location.href='MyPost.jsp'">나의 활동</button>
		</div>

		<div
			style="display: flex; flex-direction: row; justify-content: space-around; align-items: center;">
			<form action="UpdateCon" method="POST" id="nick-change">
				<p style="margin-left: 10px; font-weight: bold;">닉네임 변경</p>
				<a><input type="text" name="name" placeholder="이름을 입력하세요."
					style="width: 500px; margin-left: 10px;"></a> <a><input
					type="text" name="id" placeholder="아이디를 입력해주세요."
					style="width: 500px; margin-left: 10px;"></a> <a><input
					type="text" name="nick" placeholder="변경할 닉네임을 입력해 주세요."
					style="width: 500px; margin-left: 10px;"></a>
				<button id="editinfo" style="width: 500px; margin-left: 10px;"
					type="submit" value="update">변경</button>
					<div style="margin-left: 1em; margin-top: 1em;">
					<span style="color: blue; align-self: center;">닉네임 변경에 성공했습니다.</span>
					</div>
			</form>

			<form action="UpdateCon2" method="POST" id="pw-change">
				<p style="margin-left: 10px; font-weight: bold;">비밀번호 변경</p>
				<a><input type="text" name="name" placeholder="이름을 입력하세요."
					style="width: 500px; margin-left: 10px;"></a> <a><input
					type="text" name="id" placeholder="아이디를 입력해주세요."
					style="width: 500px; margin-left: 10px;"></a> <a><input
					type="password" name="pw" placeholder="변경할 비밀번호를 입력해 주세요."
					style="width: 500px; margin-left: 10px;"></a>
				<button style="width: 500px; margin-left: 10px;" type="submit"
					value="update">변경</button>
			</form>
		</div>


	</div>
	</div>

	<div class="ourfooter">
		<footer> <nav> <a href='#' target='_blank'>Blog</a> | <a
			href='#' target='_blank'>Github</a> </nav>
		<p>
			<span>팀장 : 이준혁</span><br /> <span>팀원 : 정지명 정상민 윤 열</span><br /> <span>Copyright
				2022. TEAM 놀러가조. 여기가 여순광? All Rights Reserved.</span>
		</p>
		</footer>
	</div>

	<script type="text/javascript">

                        function nickchange() {
                            // 수정 완료
                            Swal.fire({
                                title: '정말로 수정하시겠습니까?',
                                icon: 'warning',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: '수정',
                                cancelButtonText: '취소',
                                reverseButtons: true, // 버튼 순서 거꾸로


                            }).then((result) => {
                                if (result.isConfirmed) {
                                    Swal.fire({
                                        title: '수정되었습니다!',
                                        icon: 'success',
                                        confirmButtonColor: '#3085d6'
                                    }).then((result) => {
                                        document.getElementById('nick-change').submit();
                                    })
                                }
                            });
                        }

                        function pwchange() {
                            // 수정 완료
                            Swal.fire({
                                title: '정말로 수정하시겠습니까?',
                                icon: 'warning',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: '수정',
                                cancelButtonText: '취소',
                                reverseButtons: true, // 버튼 순서 거꾸로


                            }).then((result) => {
                                if (result.isConfirmed) {
                                    Swal.fire({
                                        title: '수정되었습니다!',
                                        icon: 'success',
                                        confirmButtonColor: '#3085d6'
                                    }).then((result) => {
                                        document.getElementById('pw-change').submit();
                                    })
                                }
                            });
                        }
                    </script>
</body>

</html>