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
#cssmenu, #cssmenu ul, #cssmenu ul li, #cssmenu ul li a {
	margin: 0;
	padding: 0;
	border: 0;
	list-style: none;
	line-height: 1;
	display: block;
	position: relative;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

#cssmenu {
	width: 80px;
	color: #ffffff;
	display: inline-table;
}

#cssmenu ul ul {
	display: none;
}

#cssmenu>ul>li.active>ul {
	display: block;
}

.align-right {
	float: right;
}

#cssmenu>ul>li>a {
	padding: 16px 22px;
	z-index: 2;
	font-size: 16px;
	text-decoration: none;
	color: #ffffff;
	/* 	background: #3ab4a6; */
	-webkit-transition: color .2s ease;
	-o-transition: color .2s ease;
	transition: color .2s ease;
}

#cssmenu>ul>li>a:hover {
	color: #d8f3f0;
}

#cssmenu ul>li.has-sub>a:after {
	position: absolute;
	right: 30px;
	top: 19px;
	z-index: 5;
	display: block;
	height: 10px;
	width: 2px;
	background: #ffffff;
	content: "";
	-webkit-transition: all 0.1s ease-out;
	-moz-transition: all 0.1s ease-out;
	-ms-transition: all 0.1s ease-out;
	-o-transition: all 0.1s ease-out;
	transition: all 0.1s ease-out;
}

#cssmenu ul>li.has-sub>a:before {
	position: absolute;
	right: 22px;
	top: 23px;
	display: block;
	width: 10px;
	height: 2px;
	background: #ffffff;
	/* content: ""; */
	-webkit-transition: all 0.1s ease-out;
	-moz-transition: all 0.1s ease-out;
	-ms-transition: all 0.1s ease-out;
	-o-transition: all 0.1s ease-out;
	transition: all 0.1s ease-out;
}

#cssmenu ul>li.has-sub.open>a:after, #cssmenu ul>li.has-sub.open>a:before
	{
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

#cssmenu ul ul li a {
	padding: 14px 22px;
	z-index: 2;
	font-size: 14px;
	text-decoration: none;
	color: #dddddd;
	background: #49505a;
	-webkit-transition: color .2s ease;
	-o-transition: color .2s ease;
	transition: color .2s ease;
}

#cssmenu ul ul ul li a {
	padding-left: 32px;
}

#cssmenu ul ul li a:hover {
	color: #ffffff;
}

#cssmenu ul ul>li.has-sub>a:after {
	top: 16px;
	right: 15px;
	background: #dddddd;
}

#cssmenu ul ul>li.has-sub>a:before {
	top: 20px;
	background: #dddddd;
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
		<div style="background-color: rgb(70, 110, 200); margin: 0; height: 100vh; overflow: auto;">
			<hr>

			<div id="cssmenu">
				<c:forEach var="side3" items="${lvOne}" varStatus="status">
					<ul>
						<li class='has-sub'><a href="#">
								<c:out value="${side3.H_LVL_CD}" />
							</a></li>
					</ul>
				</c:forEach>
			</div>
		</div>
	</div>




	<%-- <script src="${pageContext.request.contextPath}/resources/assets/dist/js/bootstrap.bundle.min.js"></script> --%>
	<script>
		(function($) {
			$(document).ready(function() {

				$('#cssmenu li.active').addClass('open').children('ul').show();
				$('#cssmenu li.has-sub>a').on('click', function() {
					$(this).removeAttr('href');
					var element = $(this).parent('li');
					if (element.hasClass('open')) {
						element.removeClass('open');
						element.find('li').removeClass('open');
						element.find('ul').slideUp(200);
					} else {
						element.addClass('open');
						element.children('ul').slideDown(200);
						element.siblings('li').children('ul').slideUp(200);
						element.siblings('li').removeClass('open');
						element.siblings('li').find('li').removeClass('open');
						element.siblings('li').find('ul').slideUp(200);
					}
				});

			});
		})(jQuery);
	</script>
	<script>
		function lvOne() {
			let f = document.createElement('form');

			let obj;
			obj = document.createElement('input');
			obj.setAttribute('type', 'hidden');
			obj.setAttribute('name', 'LVL_CD');
			obj.setAttribute('value', categoryVO);

			f.appendChild(obj);
			f.setAttribute('method', 'post');
			f.setAttribute('action', '/board/lvOne');
			document.body.appendChild(f);
			f.submit();
			// 			location.href="/board/lvOne";
		}
	</script>
	<script src="${pageContext.request.contextPath}/resources/main/js/sidebars.js"></script>
</body>
</html>