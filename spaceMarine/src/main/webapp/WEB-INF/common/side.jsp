<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side</title>

<%-- <link href="${pageContext.request.contextPath}/resources/main/css/bootstrap.min.css" rel="stylesheet"> --%>
<link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sidebars/">
<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

.b-example-divider {
	height: 1rem;
	background-color: white;
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

.nav-scroller {
	position: relative;
	z-index: 2;
	height: 2.75rem;
	overflow-y: hidden;
}

.nav-scroller .nav {
	display: flex;
	flex-wrap: nowrap;
	padding-bottom: 1rem;
	margin-top: -1px;
	overflow-x: auto;
	text-align: center;
	white-space: nowrap;
	-webkit-overflow-scrolling: touch;
}

ul {
	list-style: none;
}
</style>
<style type="text/css">
/*세로형 메뉴*/

#menu2 a {
	display: block;
	color: #fff;
}

.M01 {
	width: 70px;
	background: #000;
}

.M01>li, .M02>li, .M03>li {
	position: relative;
	width: 100%;
	height: 50px;
	background: #000;
	text-align: center;
	line-height: 50px;
}

.M01>li:hover .M02 {
	left: 40px;
}

.M01>li a:hover {
	display: block;
	background: #AB06AD;
}

.M02, .M03 {
	width: 100px;
	background: black;
	position: absolute;
	top: 0;
	left: -9999px;
}

.M02>li:hover .M03 {
	left: 100px;
}

.M02>li a:hover {
	display: block;
	background: red;
}

.M03>li a:hover {
	display: block;
	background: blue;
}
</style>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/main/css/sidebars.css" rel="stylesheet">
</head>
<body>
	<div class="flex-shrink-0"
		style="width: 15%; height: 100vh; max-height: 100vh; overflow-x: auto; overflow-y: hidden; float: left; background-color: rgb(26, 90, 197);"
	>
		<br>
		<h3 style="padding-left: 20px; color: white; font: bold;">가격 단위</h3>
		<div style="background-color: rgb(70, 110, 200); margin: 0;">
			<hr>
			<div class="fs-5 fw-bold" style="color: white; margin-left: 30px;">
				대한민국 &nbsp;&nbsp;
				<input type="radio" name="chk_info" value="대한민국">
			</div>
			<div class="fs-5 fw-bold" style="color: white; margin-left: 30px;">
				US &emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="radio" name="chk_info" value="미국">
			</div>
			<hr>
		</div>


		<h3 style="padding-left: 20px; color: white; font: bold;">상품 분류</h3>
		<div style="background-color: rgb(70, 110, 200); margin: 0; height: 100vh;">
			<hr>
			<c:forEach var="category" items="${category}">
				<div id="menu2">
					<ul class="M01">
						<li><a href="#">${category.ctgr_no }</a>
							<ul class="M02">
								<li><a href="#">${category.ctgr_nm_en}</a>
									<ul class="M03">
										<li><a>${category.ctgr_nm_ko}</a></li>
									</ul></li>
							</ul></li>
					</ul>
				</div>
			</c:forEach>
			<%-- <c:forEach var="category" items="${category}" begin="160" end="175" step="1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home"
					aria-expanded="false" style="color: white;"
				>
					<c:if test="${!empty category.ctgr_nm_en}">
						<h5>
							<c:out value="${category.ctgr_nm_ko }" />
						</h5>
					</c:if>
				</button>
				<c:if test="${!empty category.ctgr_no}">
					<div class="collapse" id="home">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#home1'" aria-expanded="false" style="color: white;"
								>
									<h5>${category.ctgr_old_cd}</h5>
								</a>
								<div class="collapse" id="home1">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">v넥</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</c:if>
			</c:forEach> --%>
		</div>

	</div>




	<%-- <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap.bundle.min.js"></script> --%>
	<script>
		const root = document.getElementById('root');
		function createTreeView(menu, currentNode) {
			// TODO: createTreeView 함수를 작성하세요.

			for (let i = 0; i < menu.length; i++) {
				const li = document.createElement("li");
				const ul = document.createElement("ul");
				const input = document.createElement("input");
				const span = document.createElement("span");

				if (menu[i].children === undefined) {
					currentNode.append(li);
					li.textContent = `${menu[i].name}`;
				} else {
					currentNode.append(li);
					li.append(input, span, ul);
					input.setAttribute("type", "checkbox");
					span.textContent = `${menu[i].name}`;

					createTreeView(menu[i].children, ul);
				}
			}
		}

		createTreeView(menu, root);
	</script>
	<script src="${pageContext.request.contextPath}/resources/main/js/sidebars.js"></script>
</body>
</html>