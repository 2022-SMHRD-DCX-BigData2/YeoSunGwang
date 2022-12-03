<%@page import="com.smhrd.domain.CommentsDAO"%>
<%@page import="com.smhrd.domain.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.domain.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.Member"%>
<%@page import="com.smhrd.domain.Comments"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
	Member loginMember = (Member)session.getAttribute("loginMember");
   	Comments Comments = (Comments)session.getAttribute("insertComments");
   	BoardVO ViewPost = (BoardVO)session.getAttribute("ViewPost");
   	
 	List<Comments> CommentsList = new ArrayList<Comments>();
	CommentsDAO dao = new CommentsDAO();
	CommentsList =dao.C_ALL(); 
	
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

		<div id="Middle_nav" style="margin-left: 12.5em; margin-bottom: -2em;">
			<ul>
				<br>
				<li><a href="#">RESTAURANT</a></li>
				<li><a href="#">CAFE</a></li>
				<li><a href="#">TOURIST SPOT</a></li>

			</ul>
		</div>

		
		<div id="post_info">
			<div class="info_title">
				<span><%= ViewPost.getBoard_title() %> &nbsp;</span> 
				<span class="tooltip" style="display: list-item; color: #EA2027; list-style: none;">
					<i class="fa-solid fa-camera"></i> <span class="tooltip-text">사진스팟</span>
				</span>
			</div>

			<div class="image-box">
				<img class="image-thumbnail" src="<%= ViewPost.getImg_link()%>" alt="">
			</div>


			<div class="info_text">
				<span>
				<%= ViewPost.getBoard_content() %>
				</span>
			</div>

			<div class="info_icon">
				<div class="like_com">
					<ul>
						<li><a onclick="clickCOM()" style="cursor: pointer;"><span
								class="tooltip"><i class="fa-solid fa-comment"> 11</i><span
									class="tooltip-text">댓글 보기</span></span></a></li>
						<% if(loginMember != null){ %>
						<li><a href="#"><i class="fa-regular fa-heart"> 11</i></a></li>
						<%}else {  %>
						<li><a><i class="fa-regular fa-heart">11</i></a></li>
						<%} %>

					</ul>
					<div class="link_map">
						<li><a href="#" onclick="copy()"><span class="tooltip">
									<i class="fa-solid fa-arrow-up-right-from-square"></i><span
									class="tooltip-text">링크 복사</span>
							</span></a></li>
						<li><a href="#"><span class="tooltip"><i
									class="fa-solid fa-map-location-dot"></i><span
									class="tooltip-text">지도로 이동</span></span></a></li>
					</div>
				</div>

			</div>
			<br>
			
			<div id="COMMENTS" style="display: none;">

				<%if(loginMember != null){ %>
				<form action="CommentsCon" method="GET" style="margin: 0 0 0 0;">
					<ul>
						<li><input type="text" placeholder="  댓글을 입력하세요." name="comments"></li>
						<li><input type="submit" value="등록" style="font-size: 0.599em;"></li>
						<li><input type="hidden" name="mem_num" value=<%= loginMember.getMem_num() %>></li>
						<li><input type="hidden" name="board_num" value=<%= ViewPost.getBoard_num() %>></li>
						<li><input type="hidden" name="mem_nick" value=<%= loginMember.getMem_nick() %>></li>
					</ul>
					<br>
				</form>
				<%} else{ %>
				<%} %>

				<table>
			
				<% for(Comments vo: CommentsList){ %>
					<tbody>
						<tr>
							<td><i class="fa-solid fa-user"></i> &nbsp; <%=vo.getMem_nick()%></td>
						</tr>

						<tr>
							<td><%= vo.getComments() %></td>
						</tr>
					</tbody>
					<%}%>
				</table>
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

	<script>
		function clickCOM() {
			if ($("#COMMENTS").css("display") == "none") {
				$("#COMMENTS").css("display", "flex")
			} else {
				$("#COMMENTS").css("display", "none")
			}
		}

		function copy() {
			// 링크 복사 완료
			Swal.fire({
				icon : 'success',
				title : '링크를 복사했습니다!'
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