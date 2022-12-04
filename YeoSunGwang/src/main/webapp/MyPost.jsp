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

<body>
	<div id="wrap" class="My1">

		<div id="High_nav">
			<h1 id="High_nav_1">My page</h1>
		</div>

		<section>
			<div id="wrap1">
				<br>
				<button onclick="location.href='editMemInfo.jsp'";>회원 정보
					수정</button>
				<button onclick="location.href='POINT.jsp'";>포인트 내역</button>
				<button onclick="location.href='VOUCHER.jsp'";>상품권 발급 내역</button>
				<button onclick="location.href='MyPost.jsp'";>나의 활동</button>
			</div>
			<nav class="links2" style="margin-bottom: 4em;">
				<ul>
					<li><a href="MyPost.jsp"
						style="font-weight: bold; color: #2EBAAE; text-decoration: underline; text-underline-position: under;">내가
							쓴 글 보기</a></li>
					<!-- 홈화면 -->
					<li><a href="MyCom.jsp">내가 쓴 댓글 보기</a></li>
					<!-- 포인트 교환 -->
					<li><a href="MyLike.jsp">좋아요 누른 글 보기</a></li>
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

						<!-- 여기서부턴 FOR문 돌리고 페이징처리! -->
			
			<%-- 			
				<tr align="center">
			
				<td><%=####.getBoard_num()%></td> --> 게시글 No.
				
				<%if(####.getTravel_admin() == 3){ %>
				<td>여수</td>
				<%} else if(####.getTravel_admin() == 4){ %>
				<td>순천</td>
				<%} else if(####.getTravel_admin() == 5){ %>
				<td>광양</td>
				<%} %> --> 말머리
				
				<td align="left"><a href="view.jsp"><%=####.getBoard_title() %></a></td> --> 게시글 제목
				<td><%=####.getmem_nick() %></td> --> 게시글 작성자 닉네임
				<td><%=####.getBoard_date() %></td> --> 게시일자
				<td><%=####.getLike_total() %><i class="fa-solid fa-heart" style="color: red;"></i></td> -->좋아요
				
			</tr> 
		--%>
			</table>
		</div>

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
		function needlogin() {
			Swal.fire({
				icon: 'error',
				title: '로그인 후 \n 이용할 수 있습니다!',
			})
		}
	</script>

</body>
</html>