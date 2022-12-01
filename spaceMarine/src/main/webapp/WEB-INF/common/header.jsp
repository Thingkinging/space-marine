<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
		<div class="container px-4 px-lg-5">
			<ul class="navbar-nav ms-auto py-4 py-lg-2" style="margin-top: 0;">
				<li class="nav-item"><a class="nav-link px-lg-3 py-1 py-lg-5" href="/">
						<h4>Home</h4>
					</a></li>
				<li class="nav-item"><a class="nav-link px-lg-3 py-1 py-lg-5" href="/board/company">
						<h4>About</h4>
					</a></li>
				<c:choose>
					<c:when test="${empty member}">
						<li class="nav-item"><a href="/member/login" class="nav-link px-lg-3 py-3 py-lg-6">
								<b>로그인</b>
							</a></li>
					</c:when>
					<c:when test="${!empty member}">
						<li class="nav-item"><a href="#" class="nav-link px-lg-3 py-3 py-lg-6">
								<b><c:out value="${member.id}" />님 안녕하세요</b>
							</a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</nav>
	<!-- Page Header-->
	<header class="masthead"
		<%--  style="background-image: url('${pageContext.request.contextPath}/resources/main/assets/img/home-bg.jpg')" --%> style="margin-bottom: 30px;"
	>
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5">
				<div class="col-md-10 col-lg-8 col-3">
					<div class="site-heading">
						<h1 style="margin: 20px;">Space Marine</h1>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>