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

	<form action="LoginCon" method="Post" id="login-info">
		<div id="wrap" class="My1" style="background-color: #F4F4F4;">
			<div class="join_div">
				<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
				<ul>
					<div class="join_input">
						<!-- 회원가입에 있던거 그대로 가져왔음! 클래스명때문에 헷갈리지않기 -->
						<li>아이디</li>
						<li><input type="text" name="id"></li> <br>
						<li>비밀번호</li>
						<li><input type="text" name="pw"></li> <br>
						<li style="margin-bottom: 2em; flex-direction: column;">
							<p style="margin: 0;">
								<input type="checkbox" name="login" value="keeplogin"
									class="login" onclick="keepLogin()">로그인 유지
							</p>
							<p style="margin: 0;">
								<input type="checkbox" name="login" value="autologin"
									class="login" onclick="autoLogin()">자동 로그인
							</p>
						</li>
						<button type="button" id="login" value="login"
							onclick="loginSuccess()">
							<p>로그인</p>
						</button>

						<ul class="find">
							<li><button type="button"
									onclick="location.href='Join.html'">
									<a>회 원 가 입</a>
								</button></li>
							<li><button type="button"
									onclick="location.href='FindId.html'">
									<a>아이디 찾기</a>
								</button></li>
							<li><button type="button"
									onclick="location.href='FindPw.html'">
									<a>비밀번호 찾기</a>
								</button></li>
						</ul>


					</div>
				</ul>
			</div>

		</div>
	</form>

	<script type="text/javascript">

        function loginSuccess() {
            Swal.fire({
                icon: 'success',
                title: '로그인 성공!',
                confirmButtonText: '홈페이지로 이동',
            }).then(result => {
                if (result.isConfirmed) {
                	document.getElementById('login-info').submit();
                }
            })
        }

        function loginFail() {
            Swal.fire({
                icon: 'error',
                title: '로그인 실패!',
                text: '아이디 혹은 비밀번호를 잘못 입력하셨습니다. \n 아이디를 확인해주세요.',
            })
        }

        // function loginFail() {
        //     if(로그인이 안됐을때){
        //         Swal.fire({
        //             icon: 'error',
        //             title: '로그인 실패!',
        //             text: '아이디 혹은 비밀번호를 잘못 입력하셨습니다. \n 아이디를 확인해주세요.',
        //         })
        //     }
        //     }
                
        function autoLogin() {
            Swal.fire({
                icon: 'warning',
                title: '자동 로그인 사용시 보안상 문제가 발생할 수 있습니다!',
                text: '개인 PC에서만 사용할 것을 권장드립니다.',
            })
        }

        function keepLogin() {
            Swal.fire({
                icon: 'warning',
                title: '로그인 상태 유지시 보안상 문제가 발생할 수 있습니다!',
                text: '개인 PC에서만 사용할 것을 권장드립니다.',
            })
        }
    </script>
</body>

</html>