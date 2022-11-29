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
			<a href="MAIN.html"><img src="images/여순광.png" alt="logo"></a>
		</h1>
	</header>

	<!-- 사용자에게 데이터를 넘길 공간 -->
	<form action="#" method="get">
		<div id="wrap" class="My1" style="background-color: #F4F4F4;">
			<div class="join_div">
				<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
				<ul>
					<div class="join_input">
						<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
						<li>이름</li>
						<li><input type="text" name="name"></li> <br>
						<li>아이디</li>
						<li><input type="text" name="id"></li> <br>
						<li>이메일</li>
						<li><input type="text" name="email"></li> <br>
						<button type="button" id="login" name="findID" name="findPW"
							onclick="pwFindSuccess()">
							<p>비밀번호 찾기</p>
						</button>
					</div>
				</ul>
			</div>

		</div>
	</form>

	<!-- <form action="#" method="get">
        <table id="FindPwtable">
            <tr>
                <td>아이디<input type="text" name="name" class="input" style="width: 100%;"></td>
            </tr>

            <tr>
                <td>이름<input type="text" name="name" class="input" style="width: 100%;"></td>
            </tr>

            <tr>
                <td><span>닉네임</span><input type="text" name="nick" class="input" style="width: 100%;"></td>
            </tr>

            <tr>
                <td>생일<br><input type="date" name="birth" class="input" style="width: 100%;"></td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="비밀번호 찾기" onclick="pwFindSuccess()">
                </td>
            </tr>
        </table>        
    </form> -->
	</script>
	<script type="text/javascript">
		function pwFindFail() {
			// 입력 정보가 데이터와 불일치할 경우
			Swal.fire({
				icon : 'error',
				title : '입력 정보가 일치하지 \n 않습니다!',
				text : '정보를 정확히 입력해주세요!',
			})
		}

		function pwFindSuccess() {
			// 입력 정보가 데이터와 일치할 경우
			Swal.fire({
				icon : 'success',
				title : '{email}\n 비밀번호가 전송되었습니다.',
			})
		}
	</script>
</body>

</html>