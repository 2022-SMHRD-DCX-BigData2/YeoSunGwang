<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>여기가 여순광?</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript>
        <link rel="stylesheet" href="assets/css/noscript.css" />
    </noscript>
    <link rel="stylesheet" href="assets/css/sweetalert2.min.css">
    <script src="assets/js/sweetalert2.min.js"></script>
</head>

<body>
    <header style="display: flex; justify-content: center;">
        <h1><a href="MAIN.jsp"><img src="images/여순광.png" alt="logo"></a></h1>
    </header>

    <form action="JoinCon" method="POST" id="join-info" name="join">
        <div id="wrap" class="My1" style="background-color:#F4F4F4;">
            <div class="join_div">
                <ul>
                    <div class="join_input">
                        <h1 style="font-size:3em">회원가입</h1>
                        <li>아이디</li>
                        <li><input type="text" name="id" id="id"><button type="button" onclick="idCheck()">중복확인</button></li>
                        <br>
                        <li>비밀번호</li>
                        <li><input type="password" name="pw" id="pw"></li>
                        <br>
                        <li>이름</li>
                        <li><input type="text" name="name" id="name"></li>
                        <br>
                        <li>이메일</li>
                        <li><input type="text" name="email" id="email"><button type="button" onclick="emailCheck()">중복확인</button></li>
                        <br>
                        <li>닉네임</li>
                        <li><input type="text" name="nick" id="nick"><button type="button" onclick="nickCheck()">중복확인</button></li>
                        <br>
                        <button type="button" id="join" value="회원가입" onclick="joinform_check()"><p>회원가입</p></button>
                    </div>
                </ul>
            </div>
        </div>
    </form>

    </script>
    <script type="text/javascript">
	    var popupWidth = 500;
	    var popupHeight = 300;
	    var popupX = (document.body.offsetWidth / 2) - (380 / 2);
	 	// 만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
	 	var popupY= (window.screen.height / 2) - (300 / 2);
	 	// 만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

        function idCheck() {
        	if(document.getElementById('id').value == "" || document.getElementById('id').value.lenth <0){
        		Swal.fire({
                    icon: 'warning',
                    title: '아이디를 입력해주세요!',
                });
              id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
              return false;
        	}else{
        		//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
        		//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
        		window.open("joinIdCheck.jsp?userid="+document.getElementById('id').value,"",
        				'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
        	}
        }

        function emailCheck() {
            // 이메일 중복확인
        	if(document.getElementById('email').value == "" || document.getElementById('email').value.lenth <0){
        		Swal.fire({
                    icon: 'warning',
                    title: '이메일을 입력해주세요!',
                });
              id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
              return false;
        	}else{
        		//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
        		//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
        		window.open("joinEmailCheck.jsp?useremail="+document.getElementById('email').value,"",
        				'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
        	}
        }

        function nickCheck() {
            // 닉네임 중복확인
        	if(document.getElementById('nick').value == "" || document.getElementById('nick').value.lenth <0){
        		Swal.fire({
                    icon: 'warning',
                    title: '닉네임을 입력해주세요!',
                });
              id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
              return false;
        	}else{
        		//2. 회원정보아이디를 가지고 있는 지 체크하려면 DB에 접근해야한다.
        		//자바스크립트로 어떻게 DB에 접근할까? => 파라미터로 id값을 가져가서 jsp페이지에서 진행하면 된다.
        		window.open("joinNickCheck.jsp?usernick="+document.getElementById('nick').value,"",
        				'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
        	}
        }

       	//joinform_check 함수로 유효성 검사
           function joinform_check() {
             //변수에 담아주기
             var id = document.getElementById('id');
             var pw = document.getElementById('pw');
             var name = document.getElementById('name');
             var email = document.getElementById('email');
             var nick = document.getElementById('nick');

             if (id.value == "") {
           	  Swal.fire({
                     icon: 'warning',
                     title: '아이디를 입력해주세요!',
                 });
               id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
               return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
             }else if(pw.value == "") {
           	  Swal.fire({
                     icon: 'warning',
                     title: '비밀번호를 입력해주세요!',
                 });
               pw.focus();
               return false;
             }else if(name.value == "") {
           	  Swal.fire({
                     icon: 'warning',
                     title: '이름을 입력해주세요!',
                 })
               name.focus();
               return false;
             }else if(email.value == "") {
           	  Swal.fire({
                     icon: 'warning',
                     title: '이메일을 입력해주세요!',
                 });
               email.focus();
               return false;
             }else if(nick.value == "") {
           	  Swal.fire({
                     icon: 'warning',
                     title: '닉네임을 입력해주세요!',
                 });
               nick.focus();
               return false;
             }else{
            	 document.getElementById('join-info').submit(); 	  
              }
           }
           
        function joinFail() {
            Swal.fire({
                icon: 'error',
                title: '회원가입 실패!',
                text: '정확한 회원정보를 입력해주세요.',
            })
        }
     
    </script>
</body>

</html>