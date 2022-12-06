<%@page import="com.dto.ComuVO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
	   Member loginMember = (Member)session.getAttribute("loginMember");
		ComuVO cVo = (ComuVO) session.getAttribute("cVo");
%>

<html>


<head>
<title>여기가 여순광?</title>
<meta charset="UTF-8" />
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

<body style="background-color: #f3f1ea;">
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

	<form action="BoardServlet" method="post" name="editwrite">
		<input type="hidden" name="like_total" value="0">
		<input type="hidden" name="command" value="board_update">
				
	<div id="wrap">
		<div id="High_nav">
			<h1 id="High_nav_1">Edit Write</h1>
		</div>

		<div class="board_write_wrap">
			<div class="board_write">
				<div class="title">
					<dl>
						<dt style="margin-top: 2%; width: 4%;">제목</dt>
						<dd style="margin-left: 1.5em;">
							<input type="text" name="comu_title" placeholder="${comu.comu_title}" maxlength="100"
								style="background-color: white; width: 103%;">
						</dd>
					</dl>
				</div>
				<div class="info">
					<dl style="display: flex; align-items: center; width: 68%;" >
							<dt style="margin-top: 2%;">번호</dt>
							<input type="text" value="${comu.comu_num}" readonly
									style="background-color: white; width: 12%" name="comu_num">
							<dt style="margin-top: 2%; margin-left: 5%; margin-right: 5%;">말머리</dt>
							<dd>
								<select name="local_num" style="background-color: white;">
									<option value="1">여수</option>
									<option value="2">순천</option>
									<option value="3">광양</option>
								</select>
							</dd>
							<dt style="margin-top: 2%; margin-left: 10%;">작성자</dt>
							<dd>
								<input type="text" value="<%=loginMember.getMem_nick()%>" readonly
									style="background-color: white; width: 60%; text-align: center;" name="mem_nick">
							</dd>
					</dl>
				</div>
				<div class="cont">
					<textarea style="background-color: white;" name="comu_content" maxlength="3000">${comu.comu_content}</textarea>
				</div>
			</div>
			<div class="bt_wrap">
				<% if(loginMember != null){ %>
				<input type="submit" value="수정" onclick="return boardCheck()" 
				style="font-size: 0.85rem; border: 1px solid black; padding: 0 1.8em; background: #000; color: white; margin-right: 1%;">
				<input type="button" value="목록" 
				style="font-size: 0.85rem; border: 1px solid black; padding: 0 1.8em; background: white; color: black; margin-lseft: 1%;"
				onclick="location.href='BoardServlet?command=board_list'"> 
				<%} else { %>
				<%} %>
			</div>
		</div>
	</div>
	</form>
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
        
        function boardCheck() {
			if (document.write.comu_title.value.length == 0) {
				Swal.fire({
					icon : 'warning',
					title : '제목을 입력하세요!',
				})
				return false;
			}
			if (document.write.comu_content.value.length == 0) {
				Swal.fire({
					icon : 'warning',
					title : '내용을 입력하세요!',
				})
				return false;
			}
			return true;
		}
        
        function open_win(url, name){
        	window.open(url, name, "width=500, height=230");
        }
	</script>	


</body>

</html>