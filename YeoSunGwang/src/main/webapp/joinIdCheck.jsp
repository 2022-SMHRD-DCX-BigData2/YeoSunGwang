<%@ page import = "com.smhrd.domain.MemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="display: flex; flex-direction: column; align-items: center;">
	<h1>아이디 중복체크</h1>
		<%//1. 한글처리 & 받아온 파라미터 변수화
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("userid");
		
		//2. MemberDAO객체생성 -> 전달받은 정보 모두 저장
		MemberDAO dao = new MemberDAO();
		
		//3. joinIdCheck(ID)메서드
		int result = dao.joinIdCheck(id);
		%>
		
		<!-- 4.팝업창구현  -->
		<fieldset>
			<!-- <form action="" method="post">
			action속성에 값이 없으면 기본적으로 자기자신을 불러오지만 중복확인 버튼을 클릭했을때 변경되지않는다.-->	
			<form action="joinIdCheck.jsp" method="post" name="joinCheck">
				<div style="display: flex; align-items: center;">
					<div style="margin-left: 1em; margin-right: 1em;">ID</div>
					<input type="text" name="userid" value="<%=id%>">
					<input type="submit" value="중복 확인" style="height: 4.2em; line-height:0;">	 
				</div>
			</form>
		</fieldset>
		
		<%
		if (result == 1){
			//5. 아이디사용하기버튼추가 => 동기방식사용 but 요즘은 비동기방식을 더 많이사용한다
			%>
				<div style="display: flex; align-items: center; flex-direction: column;">
					 <div style="color: blue;">사용 가능한 아이디입니다.</div>
					 <input type="button" value="아이디 사용하기" onclick="result();" style="line-height:0;">
				</div>
				
				<script>
				opener.document.join.ichk.value = "1";
				</script>	
			<% 
		}else if(result == 0){
			%>
				<div style="color: red;">중복된 아이디입니다.</div>
				<script>
				opener.document.join.ichk.value = "0";
				</script>
			<%
		}else{
			out.print("에러 발생!!!(-1)"); 
		}
		
		%>
		
		<!-- 6. 선택된아이디는 중복확인창에서 회원가입 페이지로 정보전달  -->
		 <script type="text/javascript">
		    function result(){
		    	//팝업창의 아이디정보를 회원가입창에 아이디정보로 전달
		    	//팝업창은 기존창과 종속관계를 가지고 있으므로 opener를 이용하면 된다.
		    	//alert("팝업창의 id값"+document.wfr.userid.value + ", 회원가입창의 id값 : " +opener.document.fr.id.value)
		    	//6-1. 회원가입페이지의 id값에 아이디중복으로 선택된 id값을 대입.
		    	opener.document.join.id.value = document.joinCheck.userid.value;
		    	
		    	//6-3. 회원가입창 제어
		    	opener.document.join.id.readOnly=true;
		    	
		    	//6-2. 창닫기
		    	window.close();
		    }
		 
		 </script>




</body>
</html>