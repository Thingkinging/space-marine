<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>header</title>
<link rel="icon" type="${pageContext.request.contextPath}/resources/main/image/x-icon"
	href="${pageContext.request.contextPath}/resources/main/assets/favicon.ico"
/>
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet"
	type="text/css"
/>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/resources/main/css/styles.css" rel="stylesheet" />
</head>
<body>

	<header class="masthead" style="background-color: rgb(26, 90, 197); margin-bottom: 2px;">

		<div>
			<div class="row">
				<nav class="navbar" id="mainNav" style="margin-top: 30px;">
					<a class="nav-link px-lg-3 py-1 py-lg-5" href="javascript:companyInfo()" id="companyInfo">
						<h4 style="color: white;">회사소개</h4>
					</a>
					<a class="nav-link px-lg-3 py-1 py-lg-5" href="javascript:homepageInfo()" id="homepageInfo">
						<h4 style="color: white;">홈페이지 이용가이드</h4>
					</a>
					<c:choose>
						<c:when test="${empty member}">
							<a href="/member/login" class="nav-link px-lg-3 py-3 py-lg-6">
								<b>로그인</b>
							</a>
						</c:when>
						<c:when test="${!empty member}">
							<a href="#" class="nav-link px-lg-3 py-3 py-lg-6">
								<b><c:out value="${member.id}" />님 안녕하세요</b>
							</a>
						</c:when>
					</c:choose>
				</nav>
				<div class="site-heading">
					<a href="/board/main">
						<img src="${pageContext.request.contextPath}/resources/images/KoraFlag.jpg" width="120px;" height="120px;"
							style="float: left; margin: 10px; margin-left: 20px;"
						>
					</a>
					<h1 style="margin-top: 25px;">Space Marine</h1>
				</div>

			</div>
		</div>
	</header>
	<script type="text/javascript">
		function companyInfo() {
			var popUrl = "/board/companyInfo";
			var popName = "companyInfo";
			var popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
			window.open(popUrl, popName, popOption)
		}
	</script>
	<script type="text/javascript">
		function homepageInfo() {
			var popUrl = "/board/homepageInfo";
			var popName = "homepageInfo";
			var popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
			window.open(popUrl, popName, popOption)
		}
	</script>
</body>
</html>