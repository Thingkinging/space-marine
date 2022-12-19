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
#menu {
	height: 50px;
	background: #fcc;
}

.main1 {
	width: 500px;
	height: 100%;
	margin: 0 auto;
}

.main1>li {
	float: left;
	width: 25%;
	line-height: 50px;
	text-align: center;
	position: relative;
}

.main1>li:hover .main2 {
	left: 0;
}

.main1>li a {
	display: block;
}

.main1>li a:hover {
	background: #B21016;
	color: #fff;
	font-weight: bold;
}

.main2 {
	position: absolute;
	top: 50px;
	left: -9999px;
	background: #ccc;
	width: 120%;
}

.main2>li {
	position: relative;
}

.main2>li:hover .main3 {
	left: 100%;
}

.main2>li a, .main3>li a {
	border-radius: 10px;
	margin: 10px;
}

.main3 {
	position: absolute;
	top: 0;
	background: #6BD089;
	width: 80%;
	left: -9999px;

	/*left: 100%;*/

	/*display: none;*/
}

.main3>li a:hover {
	background: #085820;
	color: #fff;
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
			<!--가로형 3단 드롭다운 메뉴-->

			<div id="menu">
				<c:forEach var="side" items="${side}">
					<ul class="main1" style="display: inline-block;">
						<li><a href="#"><c:out value="${side.LVL_LVL}"/> </a>
							<ul class="main2">
								<li><a href="#"><c:out value="${side.LVL_CD}"/> </a>
									<ul class="main3">
										<li><a href="#">2단소메뉴1</a></li>
										<li><a href="#">2단소메뉴2</a></li>
										<li><a href="#">2단소메뉴3</a></li>
									</ul></li>
							</ul></li>
					</ul>
				</c:forEach>
			</div>
		</div>
	</div>




	<%-- <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap.bundle.min.js"></script> --%>
	<script>
		// 				const root = document.getElementById('root');
		// 				function createTreeView(menu, currentNode) {
		// 					// TODO: createTreeView 함수를 작성하세요.

		// 					for (let i = 0; i < menu.length; i++) {
		// 						const li = document.createElement("li");
		// 						const ul = document.createElement("ul");
		// 						const input = document.createElement("input");
		// 						const span = document.createElement("span");

		// 						if (menu[i].children === undefined) {
		// 							currentNode.append(li);
		// 							li.textContent = `${menu[i].name}`;
		// 						} else {
		// 							currentNode.append(li);
		// 							li.append(input, span, ul);
		// 							input.setAttribute("type", "checkbox");
		// 							span.textContent = `${menu[i].name}`;

		// 							createTreeView(menu[i].children, ul);
		// 						}
		// 					}
		// 				}

		// 				createTreeView(menu, root);
	</script>
	<script src="${pageContext.request.contextPath}/resources/main/js/sidebars.js"></script>
</body>
</html>