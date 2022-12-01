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
		style="width: 18%; height: 100vh; max-height: 100vh; overflow-x: auto; overflow-y: hidden; float: left; background-color: rgb(26, 90, 197);"
	><br>
		<span class="fw-bold" style="color: white; padding: 15px;">가격단위</span>
		<div style="background-color: rgb(70, 110, 200); margin: 0;">
			<hr>
			<div class="fs-5 fw-bold" style="color: white; margin-left: 20px;">
				대한민국
				<input type="radio" name="chk_info" value="대한민국">
			</div>
			<div class="fs-5 fw-bold" style="color: white; margin-left: 20px;">
				US
				<input type="radio" name="chk_info" value="미국">
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
		<span class="fw-bold" style="color: white; padding: 10px;">제품 카테고리 코드 분류</span>
		<div style="background-color: rgb(70, 110, 200); margin: 0; height: 100vh;">
			<ul class="list-unstyled ps-0">
				<li class="mb-1">
					<hr>
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse"
						aria-expanded="false" style="color: white;"
					>상의</button>
					<div class="collapse" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#home2-collapse" aria-expanded="false" style="color: white;"
								>반팔</a>
								<div class="collapse" id="home2-collapse">
									<ul>
										<li><a href="/board/page1" class="link-dark d-inline-flex text-decoration-none border-0 rounded">v넥</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">u넥</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">캐릭터</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">민소매</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="home-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#home3-collapse" aria-expanded="false" style="color: white;"
								>긴팔</a>
								<div class="collapse" id="home3-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">v넥</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">u넥</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">후드티</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">목티</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dash-collapse"
						aria-expanded="false" style="color: white;"
					>하의</button>
					<div class="collapse" id="dash-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#dash2-collapse" aria-expanded="false" style="color: white;"
								>바지</a>
								<div class="collapse" id="dash2-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">긴바지</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">반바지</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">면바지</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">골덴</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="dash-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#dash3-collapse" aria-expanded="false" style="color: white;"
								>치마</a>
								<div class="collapse" id="dash3-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">롱치마</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">미니스커트</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">H스커트</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">실크치마</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				<li class="mb-1">
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse"
						aria-expanded="false" style="color: white;"
					>아웃터</button>
					<div class="collapse" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#dorders2-collapse" aria-expanded="false" style="color: white;"
								>자켓</a>
								<div class="collapse" id="orders2-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">청자켓</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">가죽자켓</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">후리스</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">야상</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="orders-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
									data-bs-target="#orders3-collapse" aria-expanded="false" style="color: white;"
								>패딩</a>
								<div class="collapse" id="orders3-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">롱패딩</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">숏패딩</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">경량패딩</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">베스트패딩</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</li>
				<li class="mb-1">
					<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse"
						aria-expanded="false" style="color: white;"
					>악세서리</button>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle link-dark d-inline-flex text-decoration-none rounded collapsed" data-bs-toggle="collapse"
									data-bs-target="#account2-collapse" aria-expanded="false" style="color: white;"
								>신발</a>
								<div class="collapse" id="account2-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">운동화</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">스니커즈</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">슬리퍼</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">샌들</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<div class="collapse" id="account-collapse">
						<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
							<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle link-dark d-inline-flex text-decoration-none rounded collapsed" data-bs-toggle="collapse"
									data-bs-target="#account3-collapse" aria-expanded="false" style="color: white;"
								>etc</a>
								<div class="collapse" id="account3-collapse">
									<ul>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">반지</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">모자</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">목도리</a></li>
										<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">팔찌</a></li>
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