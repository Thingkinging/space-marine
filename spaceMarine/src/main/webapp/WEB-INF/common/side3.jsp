<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NeoShips</title>
<style>
.b-example-divider {
	height: 1rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1rem;
	height: 100vh;
}
</style>


<!-- Custom styles for this template -->
<link href="${contextPath}/resources/css/sidebars.css" rel="stylesheet">
<link href="${contextPath}/resources/js/sidebars.js" rel="stylesheet">
</head>
<body>

	<main class="d-flex flex-nowrap">

		<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
			<svg class="bi pe-none me-2" width="30" height="24">
					</svg>
			<span class="fs-5 fw-semibold">Collapsible</span>
			<!-- Default dropend button -->
			<div class="btn-group dropend">
				<button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Dropright</button>
				<ul class="dropdown-menu">
					<!-- Dropdown menu links -->
				</ul>
			</div>

		</div>

		<div class="b-example-divider b-example-vr"></div>

		<div class="container-fluid" align="center">
			<form class="d-flex" action="/board/main" method="get" id="searchForm">
				<input type="text" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
				<input type="hidden" name="pageNum" value="<c:out value='${pageMaker.cri.pageNum}'/>">
				<input type="hidden" name="amount" value="<c:out value='${pageMaker.cri.amount}'/>">
				<button class="btn btn-outline-success">Search</button>
			</form>

			<table class="table">
				<thead>
					<tr>
						<th scope="col" width="15%">코드번호</th>
						<th scope="col" width="35%">제품</th>
						<th scope="col" width="20%">비고</th>
						<th scope="col" width="10%">단위</th>
						<th scope="col" width="20%">가격(WON)</th>
				</thead>
				<tbody>
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
				</tbody>
			</table>
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
		</div>
	</main>

</body>
</html>
