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

	회사소개 저희는 선박용 물품을 공급하는 전문 업체입니다. 모든 제품을 ISSA/ IMPA코드를 기준하여 제품을 소개하였고, 달러, 한화 등의 다양한 단위로 단가를 제시하였습니다. 또한 저희 부식, 어구, 와이어로프 등 선박의 모든 품목을 협력업체와 긴밀히 연결하여 가장 저렴한 단가로
	공급하고 있습니다. 감사합니다.
	
	

	<div class="container px-4 px-lg-5" style="clear: both;">
		<div class="row gx-4 gx-lg-5 justify-content-center">
			<div class="col-md-10 col-lg-8 col-xl-7"></div>
		</div>
	</div>
	<!-- Footer-->
	<%@ include file="../../common/footer.jsp"%>

</body>
</html>