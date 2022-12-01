<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
Member loginMember = (Member) session.getAttribute("loginMember");
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
			<%
			if (loginMember == null) {
			%>
			<li><a onclick="needlogin()">VOUCHER</a></li>
			<%
			} else {
			%>
			<li><a href="Exchange_Yeosu.jsp">VOUCHER</a></li>
			<%
			}
			%>

			<!-- 마이 페이지 -->
			<%
			if (loginMember == null) {
			%>
			<li><a onclick="needlogin()">MY PAGE</a></li>
			<%
			} else {
			%>
			<li><a href="editMemInfo.jsp">MY PAGE</a></li>
			<%
			}
			%>
		</ul>
	</div>

	<div class="links2">
		<ul>
			<%
			if (loginMember == null) {
			%>
			<li><a href="Join.jsp">SIGN UP</a></li>
			<li><a href="Login.jsp">SIGN IN</a></li>
		</ul>
		<%
		} else {
		%>
		<ul>
			<li><%=loginMember.getMem_nick()%> 님 환영합니다</li>
			<li><a href="LogoutCon">LOGOUT</a></li>
			<%
			}
			%>
		</ul>
	</div>
	</header>
	<!-- 상단바 끝 -->

	<form>
	<div id="wrap">
		<div id="High_nav">
			<h1 id="High_nav_1">Write</h1>
		</div>

		<div class="board_write_wrap">
			<div class="board_write">
				
					<div class="title">
						<dl>
							<dt style="margin-top: 2%; width: 4%;">제목</dt>
							<dd>
								<input type="text" placeholder="제목 입력" name="title"
									style="margin-left: 5%; background-color: white; width: 97%">
							</dd>
						</dl>
					</div>
					<div class="info">
						<dl>
							<dt style="margin-top: 2%;">말머리</dt>
							<dd>
								<select name="prepend" style="background-color: white;">
									<option value="Y">여수</option>
									<option value="S">순천</option>
									<option value="G">광양</option>
								</select>
							</dd>
						</dl>
					</div>
					<div class="cont">
						<textarea placeholder="내용 입력" style="background-color: white;" name="content"></textarea>
					</div>
			</div>
			<div class="bt_wrap">
				<%
				if (loginMember != null) {
				%>
				<a href="Board.jsp" class="on">등록</a>
				<%
				} else {
				%>
				<%
				}
				%>
				<a href="Board.jsp">취소</a>
			</div>
		</div>
	</div>
	</form>
	
	<div class="ourfooter">
		<footer> <a href='#' target='_blank'>Blog</a> | <a href='#'
			target='_blank'>Github</a>

		<p>
			<span>팀장 : 이준혁</span><br /> <span>팀원 : 정지명 정상민 윤 열</span><br /> <span>Copyright
				2022. TEAM 놀러가조. 여기가 여순광? All Rights Reserved.</span>
		</p>
		</footer>
	</div>

	<script>
		function needlogin() {
			Swal.fire({
				icon : 'error',
				title : '로그인 후 \n 이용할 수 있습니다!',
			})
		}
	</script>


</body>

</html>