<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

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
	<!-- 사용자에게 데이터를 넘길 공간 -->
	<form action="FindIDCon" method="get" id="idFind-info">
		<div id="wrap" class="My1" style="background-color: #F4F4F4;">
			<div class="join_div">
				<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
				<ul>
					<div class="join_input">
						<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
						<li>이름</li>
						<li><input type="text" name="name"></li> <br>
						<li>이메일</li>
						<li><input type="text" name="email"></li> <br>
						<button type="button" id="login" name="findId"
							onclick="idFind()">
							<p>아이디 찾기</p>
						</button>
					</div>
				</ul>
			</div>

		</div>
	</form>

	<script type="text/javascript">
	
		function idFindFail() {
			// 아이디 검색 실패
			Swal.fire({
				icon : 'error',
				title : '찾을 수 없는 아이디입니다!',
				text : '입력 정보를 확인해주세요!',
			})
		}

		
        function idFind() {
            Swal.fire({
                icon: 'success',
                title: '아이디 찾기 성공!',
                confirmButtonText: ' 아이디 확인',
            }).then(result => {
                if (result.isConfirmed) {
                	document.getElementById('idFind-info').submit();
                }
            })
        }
        
	</script>
</body>

</html>