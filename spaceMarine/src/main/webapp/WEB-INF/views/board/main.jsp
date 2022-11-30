<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Space Marine</title>
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
<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
</head>
<body>
	<!-- Header-->
	<%@ include file="../../common/header.jsp"%>


	<!-- SideBar -->
	<%@ include file="../../common/side.jsp"%>

	<!-- Main Content-->
	<!-- <main class="d-flex flex-nowrap"> -->
	<div style="width: 70%;" align="center">
		<input type="text" value="" name="">
		<button type="submit">검색</button>
	</div>
	<table class="table table-bordered" style="float: left; width: 70%; margin-top: 70px; table-layout: fixed; text-align: center;">
		<thead>
			<tr>
				<th scope="col" width="15%">코드번호</th>
				<th scope="col" width="35%">제품</th>
				<th scope="col" width="20%">비고</th>
				<th scope="col" width="10%">단위</th>
				<th scope="col" width="20%">가격(WON)</th>
			</tr>
		</thead>
		<c:forEach var="list" items="${list}">
			<tr>
				<td><a href="javascript:codeInfo()" id="codeInfo">
						<c:out value="${list.code}" />
					</a></td>
				<td><c:out value="${list.product}"></c:out></td>
				<td><c:out value="${list.note}"></c:out></td>
				<td><c:out value="${list.unit}"></c:out></td>
				<td><a href="javascript:codeInfo()" id="codeInfo">
						<c:out value="${list.price}" />
					</a></td>
			</tr>
		</c:forEach>

	</table>
	<!-- </main> -->

	<div class="container px-4 px-lg-5" style="clear: both;">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-md-10 col-lg-8 col-xl-7"></div>
		</div>
	</div>
	<!-- Footer-->
	<%@ include file="../../common/footer.jsp"%>

	<script type="text/javascript">
		function codeInfo() {
			var popUrl = "/board/main";
			var popName = "codeInfo";
			var popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
			window.open(popUrl, popName, popOption)
		}
	</script>
</body>
</html>