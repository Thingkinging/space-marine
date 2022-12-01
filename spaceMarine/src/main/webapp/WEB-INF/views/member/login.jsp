<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

</style>


<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"
>

<!-- 나의 스타일 추가 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/main/css/login.css?v=1234">

</head>
<body class="text-center">

	<!--  html 전체 영역을 지정하는 container -->
	<div id="container">
		<!--  login 폼 영역을 : loginBox -->
		<div id="loginBox">

			<!-- 로그인 페이지 타이틀 -->
			<div id="loginBoxTitle">Space Marine</div>
			<!-- 아이디, 비번, 버튼 박스 -->
			<div id="inputBox">
				<div class="input-form-box">
					<span>아이디 </span>
					<input type="text" name="uid" class="form-control">
				</div>
				<div class="input-form-box">
					<span>비밀번호 </span>
					<input type="password" name="upw" class="form-control">
				</div>
				<div class="button-login-box">
					<a href="/member/register"><button type="button" class="btn btn-primary btn-xs" style="width: 45%">회원가입</button></a>
					<button type="button" class="btn btn-primary btn-xs" style="width: 45%">로그인</button>
				</div>
			</div>

		</div>
	</div>

	<!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"
	></script>