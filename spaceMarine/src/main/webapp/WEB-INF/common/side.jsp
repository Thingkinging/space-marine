<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/resources/main/css/sidebars.css" rel="stylesheet">
</head>
<body>
	<div class="flex-shrink-0"
		style="width: 15%; height: 100vh; max-height: 100vh; overflow-x: auto; overflow-y: hidden; float: left; background-color: rgb(26, 90, 197);"
	><br>
		<h3 style="padding-left: 20px; color: white; font: bold;">가격 단위</h3>
		<div style="background-color: rgb(70, 110, 200); margin: 0;">
			<hr>
			<div class="fs-5 fw-bold" style="color: white; margin-left: 30px;">
				대한민국
				&nbsp;&nbsp;<input type="radio" name="chk_info" value="대한민국">
			</div>
			<div class="fs-5 fw-bold" style="color: white; margin-left: 30px;">
				US
				&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="미국">
			</div>
			<hr>
		</div>

		<!-- <table>
				<tr>
					<td class="fs-5 fw-bold" style="color: white; margin-left: 20px;">&nbsp;대한민국</td>
					<td>&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="대한민국"></td>
				</tr>
				<tr>
					<td class="fs-5 fw-bold" style="color: white;">&nbsp;US</td>
					<td>&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="미국"></td>
				</tr>
			</table> -->
		<h3 style="padding-left: 20px; color: white; font: bold;">상품 분류</h3>
		<div style="background-color: rgb(70, 110, 200); margin: 0; height: 100vh; padding-left: 10px;">
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<hr>
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="false" style="color: white;"
					><h5>상의</h5></button>
					<div class="collapse" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#home2-collapse" aria-expanded="false" style="color: white;"
								><h5>반팔</h5></a>
								<div class="collapse" id="home2-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">v넥</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">u넥</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">캐릭터</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">민소매</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#home3-collapse" aria-expanded="false" style="color: white;"
								><h5>긴팔</h5></a>
								<div class="collapse" id="home3-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">v넥</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">u넥</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">후드티</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">목티</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dash-collapse"
						aria-expanded="false" style="color: white;"
					><h5>하의</h5></button>
					<div class="collapse" id="dash-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#dash2-collapse" aria-expanded="false" style="color: white;"
								><h5>바지</h5></a>
								<div class="collapse" id="dash2-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">긴바지</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">반바지</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">면바지</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">골덴</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="dash-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#dash3-collapse" aria-expanded="false" style="color: white;"
								><h5>치마</h5></a>
								<div class="collapse" id="dash3-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">롱치마</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">미니스커트</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">H스커트</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">실크치마</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				<li class="mb-1">
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse"
						aria-expanded="false" style="color: white;"
					><h5>아웃터</h5></button>
					<div class="collapse" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#orders2-collapse" aria-expanded="false" style="color: white;"
								><h5>자켓</h5></a>
								<div class="collapse" id="orders2-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">청자켓</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">가죽자켓</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">후리스</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">야상</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#orders3-collapse" aria-expanded="false" style="color: white;"
								><h5>패딩</h5></a>
								<div class="collapse" id="orders3-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">롱패딩</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">숏패딩</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">경량패딩</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">베스트패딩</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false" style="color: white;"
					><h5>악세서리</h5></button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle link-dark d-inline-flex text-decoration-none rounded collapsed" data-bs-toggle="collapse"
									data-bs-target="#account2-collapse" aria-expanded="false" style="color: white;"
								><h5>신발</h5></a>
								<div class="collapse" id="account2-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">운동화</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">스니커즈</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">슬리퍼</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">샌들</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&emsp;<a href="#" class="btn btn-toggle link-dark d-inline-flex text-decoration-none rounded collapsed" data-bs-toggle="collapse"
									data-bs-target="#account3-collapse" aria-expanded="false" style="color: white;"
								><h5>etc</h5></a>
								<div class="collapse" id="account3-collapse">
									<ul>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">반지</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">모자</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">목도리</a></li>
										<li>&emsp;<a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded" style="color: white">팔찌</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</li>


			</ul>
		</div>
		<!-- <div class="b-example-divider b-example-vr"></div> -->

	</div>




	<%-- <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap.bundle.min.js"></script> --%>

	<script src="${pageContext.request.contextPath}/resources/main/js/sidebars.js"></script>
</body>
</html>