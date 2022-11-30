<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<%
Member FindIdMember = (Member) session.getAttribute("FindIdMember");
%>

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

	<div
		style="display: flex; flex-direction: column; align-items: center;">
		<h1 style="font-size:3em;">
			회원님의 아이디는
			<span style="color:#6CCFC6; font-size:2.2em"><%=FindIdMember.getMem_id()%></span>입니다.
		</h1>
		<button style="font-size:1em;" onclick="location.href='Login.jsp'">로그인으로 이동</button>
		<br> <br>
	</div>

</body>

</html>