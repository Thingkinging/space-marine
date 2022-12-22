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
<title>NeoShips</title>
<link rel="icon" type="${pageContext.request.contextPath}/resources/main/image/x-icon"
	href="${pageContext.request.contextPath}/resources/main/assets/favicon.ico"
/>
<script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
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
.main_btn {
	float: left;
	padding: 4px;
	margin-right: 10px;
	width: 40px;
	color: #000;
	font: bold 20px tahoma;
	border: 1px solid #eee;
	text-align: center;
	text-decoration: none;
}

.main_btn:hover, .main_btn :focus {
	color: #fff;
	border: 1px solid #f40;
	background-color: #f40;
}
</style>
</head>
<body>
	<!-- Header-->
	<%@ include file="../../common/header.jsp"%>


	<!-- SideBar -->
	<%@ include file="../../common/side.jsp"%>

	<!-- Main Content-->
	<!-- <main class="d-flex flex-nowrap"> -->

	<div style="width: 70%; margin-top: 20px;" align="center">
		<form action="/board/main" method="get" id="searchForm">
			<input type="text" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
			<input type="hidden" name="pageNum" value="<c:out value='${pageMaker.cri.pageNum}'/>">
			<input type="hidden" name="amount" value="<c:out value='${pageMaker.cri.amount}'/>">
			<button class="btn btn-default">검색</button>
		</form>
	</div>
	<form name="myForm">
		<table class="table table-bordered" style="float: left; width: 70%; margin-top: 30px; table-layout: fixed; text-align: center;">
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
					<!-- 					<td><a class="move" href="javascript:codeInfo()" id="codeInfo"> -->
					<td><a class="move" href="javascript:codeInfo()" id="codeInfo">
							<c:out value="${list.IMPA_CD}" />
							<input type="hidden" name="codeInfo" id="codeInfo" value="<c:out value="${list.IMPA_CD}" />">
						</a></td>
					<td><c:out value="${list.ITEM_NM_KO}">
						</c:out></td>
					<td><c:out value="${list.DESCRIPTION}"></c:out></td>
					<td><c:out value="${list.ADD_COL3}"></c:out></td>

					<td><a class="move" href="javascript:priceInfo()" id="priceInfo">
							<c:out value="${list.UNIT}" />
						</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>

	<div style="margin-left: 35%;">
		<ul class="pagination" style="list-style: none; float: left; display: inline;">
			<c:if test="${pageMaker.prev}">
				<li class="paginate_button previous" style="float: left;"><a href="${pageMaker.startPage -1}" class="main_btn" style="">◀</a></li>
			</c:if>

			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<li class="paginate_button  ${pageMaker.cri.pageNum == num ? 'active':''} " style="float: left;"><a href="${num}" class="main_btn">${num}</a></li>
			</c:forEach>

			<c:if test="${pageMaker.next}">
				<li class="paginate_button next" style="float: left;"><a href="${pageMaker.endPage +1 }" class="main_btn">▶</a></li>
			</c:if>
		</ul>
	</div>
	<form action="/board/main" method="get" id="actionForm">
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
		<input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
	</form>
	<div class="container px-4 px-lg-5" style="clear: both;"></div>
	<!-- Footer-->
	<%@ include file="../../common/footer.jsp"%>

	<script type="text/javascript">
		function codeInfo() {
			var popUrl = "/board/codeInfo";
			var popName = "codeInfo";
			var popOption = "width = 650px, height=550px, left = 300px, top=300px, scrollbars=yes";
			window.open("", popName, popOption);

			myForm.target = popName;
			myForm.action = popUrl;
			myForm.method = "post";
			myForm.submit();

		}
	</script>
	<script type="text/javascript">
		function priceInfo() {
// 			var popUrl = "/board/priceInfo";
			var popUrl = "https://ssmaas.com/default.asp";
			var popName = "priceInfo";
			var popOption = "width = 650px, height=550px, left=300px, top=300px, scrollbars=yes";
			window.open(popUrl, popName, popOption);
		}
	</script>

</body>
</html>