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
<style type="text/css">
table tr {
	border-right: none;
	border-left: none;
	border-top: none;
	border-bottom: none;
}

table tr th {
	border-right: none;
	border-left: none;
	border-top: none;
	border-bottom: none;
}
</style>
</head>
<body>
	<!-- Header-->
	<%@ include file="../../common/header.jsp"%>

	<!-- SideBar -->
	<%@ include file="../../common/side.jsp"%>

	<!-- Main Content-->


	<table class="table table-bordered" style="float: left; width: 70%; margin-top: 70px; table-layout: fixed; text-align: center;">
		<thead>
			<tr>
				<th scope="col" colspan="5"><a href="#">제품1</a></th>
				<th scope="col" colspan="5"><a href="#">제품2</a></th>
				<th scope="col" colspan="5"><a href="#">제품3</a></th>
				<th scope="col" colspan="5"><a href="#">제품4</a></th>
				<th scope="col" colspan="5"><a href="#">제품5</a></th>
				<th scope="col" colspan="5"><a href="#">제품6</a></th>
			</tr>
			<tr>
				<th scope="col" colspan="5"><a href="#">제품7</a></th>
				<th scope="col" colspan="5"><a href="#">제품8</a></th>
				<th scope="col" colspan="5"><a href="#">제품9</a></th>
				<th scope="col" colspan="5"><a href="#">제품10</a></th>
				<th scope="col" colspan="5"><a href="#">제품11</a></th>
				<th scope="col" colspan="5"><a href="#">제품12</a></th>
			</tr>
		</thead>
		<tbody>

		</tbody>

	</table>

	<!-- </main> -->

	<table class="table table-bordered" style="float: left; width: 70%; margin-top: 30px; table-layout: fixed; text-align: center;">
		<thead>
			<tr>
				<th scope="col" width="15%">제품 번호</th>
				<th scope="col" width="35%">재고</th>
				<th scope="col" width="20%">단위</th>
				<th scope="col" width="10%">참고사항</th>
				<th scope="col" width="20%">가격(WON)</th>
			</tr>
		</thead>
		<c:forEach var="list" items="${list}">
			<tr>
				<td><a class="move" href="javascript:codeInfo()" id="codeInfo">
						<c:out value="${list.code}" />
					</a></td>
				<td><c:out value="${list.product}"></c:out></td>
				<td><c:out value="${list.note}"></c:out></td>
				<td><c:out value="${list.unit}"></c:out></td>
				<td><a href="javascript:info()" id="info">
						<c:out value="${list.price}" />
					</a></td>
			</tr>
		</c:forEach>
	</table>







	<div class="container px-4 px-lg-5" style="clear: both;">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-md-10 col-lg-8 col-xl-7"></div>
		</div>
	</div>
	<!-- Footer-->
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>