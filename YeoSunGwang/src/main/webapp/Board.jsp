<%@ page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
   Member loginMember = (Member)session.getAttribute("loginMember");
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

	<div id="wrap">
		<div id="High_nav">
			<h1 id="High_nav_1">COMMUNITY</h1>
		</div>


		<div id="wrap3">
			<div class="search_bar">
				<input type="text" placeholder="검색어를 입력하세요.">
				<button>
					<i class="fa-solid fa-magnifying-glass"></i>
				</button>
			</div>
			<select name="local_num">
				<option>전체</option>
				<option value="1">여수</option>
				<option value="2">순천</option>
				<option value="3">광양</option>
			</select>
		</div>
		<table style="border: 1px solid whitesmoke;" id="boardtable">
			<tr align="center">
				<td>NO.</td>
				<td style="width: 5em;">말머리</td>
				<td align="left" style="width: 60%; text-align: center;">제목</td>
				<td>글쓴이</td>
				<td>좋아요❤️</td>
			</tr>
			
			<c:forEach var="comu" items="${comuList}">
				<tr align="center">
				
					<td>${comu.comu_num}</td>
					<c:if test="${comu.local_num eq '1'}">
						<td>여수</td>
					</c:if>
					<c:if test="${comu.local_num eq '2'}">
						<td>순천</td>
					</c:if>
					<c:if test="${comu.local_num eq '3'}">
						<td>광양</td>
					</c:if>
					
					<td align="left">
						<a href="BoardServlet?command=board_view&comu_num=${comu.comu_num}">${comu.comu_title} </a>
					</td>
					
					<td>${comu.mem_nick}</td>
					<td>${comu.like_total}</td>
				</tr>
			</c:forEach>

		</table>

		<%if(loginMember != null){ %>
		<div style="display: flex; justify-content: end; margin-right: 5%;">
			<button type="button" onclick="location.href='MyBoard.jsp'"
				style="margin-left: 100px; background-color: white; height: 3.5em; width: 9em; line-height: 0; font-size: 0.8em; padding: 0.5em;">
				내가 쓴 글 보기</button>

			<button type="button" onclick="location.href='BoardServlet?command=board_write_form'"
				style="margin-left: 20px; background-color: white; height: 3.5em; width: 8em; line-height: 0; font-size: 0.8em; padding: 0;">
				글 쓰기</button>
		</div>
		<%} else { %>
		<%} %>
		
		<footer style="display: flex; flex-direction: column; align-items: center;">
		
			<div class="pagination" style="border-color: black;">
				<a href="#" class="page active">1</a>
				<a href="#" class="page active">2</a> 
				<a href="#" class="page active">3</a> 
				<a href="#" class="page active">4</a> 
				<a href="#" class="page active">5</a>
				<a href="#" class="next">Next</a>
			</div>
			
		</footer>
	</div>


	<div class="ourfooter">

		<div sytle="margin-top: 1em;">
			<p style="background-color: whitesomke; text-align: center; margin-top: 1em;">
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
</script>

</body>
</html>