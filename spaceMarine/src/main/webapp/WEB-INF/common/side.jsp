<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>side</title>

<link href="${pageContext.request.contextPath}/resources/main/css/bootstrap.min.css" rel="stylesheet">
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
<div>
	<div class="flex-shrink-0 p-3 bg-white"
		style="width: 18%; height: 100vh; max-height: 100vh; overflow-x: auto; overflow-y: hidden; float: left;"
	>
		<span class="fs-5 fw-semibold">가격단위</span><hr>
		<table>
			<tr>
				<td>&nbsp;대한민국</td>
				<td>&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="대한민국"></td>
			</tr>
			<tr>
				<td>&nbsp;US</td>
				<td>&nbsp;&nbsp;&nbsp;<input type="radio" name="chk_info" value="미국"></td>
			</tr>
		</table>
		<hr>
		<ul class="list-unstyled ps-0">
			<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse"
					aria-expanded="false"
				>Menu1</button>
				<div class="collapse" id="home-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
								data-bs-target="#home2-collapse" aria-expanded="false"
							>subMenu1</a>
							<div class="collapse" id="home2-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="collapse" id="home-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
								data-bs-target="#home3-collapse" aria-expanded="false"
							>subMenu2</a>
							<div class="collapse" id="home3-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dash-collapse"
					aria-expanded="false"
				>Menu2</button>
				<div class="collapse" id="dash-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
								data-bs-target="#dash2-collapse" aria-expanded="false"
							>subMenu1</a>
							<div class="collapse" id="dash2-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="collapse" id="dash-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
								data-bs-target="#dash3-collapse" aria-expanded="false"
							>subMenu2</a>
							<div class="collapse" id="dash3-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse"
					aria-expanded="false"
				>Menu3</button>
				<div class="collapse" id="orders-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
								data-bs-target="#dorders2-collapse" aria-expanded="false"
							>subMenu1</a>
							<div class="collapse" id="orders2-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="collapse" id="orders-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse"
								data-bs-target="#orders3-collapse" aria-expanded="false"
							>subMenu2</a>
							<div class="collapse" id="orders3-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</li>
			<li class="mb-1">
				<button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse"
					aria-expanded="false"
				>Menu4</button>
				<div class="collapse" id="account-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle link-dark d-inline-flex text-decoration-none rounded collapsed" data-bs-toggle="collapse"
								data-bs-target="#account2-collapse" aria-expanded="false"
							>subMenu1</a>
							<div class="collapse" id="account2-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="collapse" id="account-collapse">
					<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
						<li>&nbsp;&nbsp;<a href="#" class="btn btn-toggle link-dark d-inline-flex text-decoration-none rounded collapsed" data-bs-toggle="collapse"
								data-bs-target="#account3-collapse" aria-expanded="false"
							>subMenu2</a>
							<div class="collapse" id="account3-collapse">
								<ul>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu1</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu2</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu3</a></li>
									<li><a href="#" class="link-dark d-inline-flex text-decoration-none border-0 rounded">reSubMenu4</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</li>


		</ul>
	</div>
	<!-- <div class="b-example-divider b-example-vr"></div> -->

</div>




	<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

		<script src="${pageContext.request.contextPath}/resources/main/js/sidebars.js"></script>
</body>
</html>