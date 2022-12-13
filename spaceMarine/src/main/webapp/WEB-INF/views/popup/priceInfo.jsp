<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="/">
	<c:param name="myForm" value="list"></c:param>
</c:import>
	<!-- 	<table>
		<tr>
			<td>가격 정보</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>코드번호</td>
			<td>1000</td>
		</tr>
		<tr>
			<td>단위</td>
			<td>set</td>
		</tr>
		<tr>
			<td>단가</td>
			<td>10000</td>
		</tr>
	</table>

	<table>
		<tr>
			<td>제품이미지</td>
		</tr>
		<tr>
			<td></td>
		</tr>
	</table> -->
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
		<c:choose>
			<c:when test="${!empty list}">
				<td><c:out value="${list.code}" /></td>
				<td><c:out value="${list.product}"></c:out></td>
				<td><c:out value="${list.note}"></c:out></td>
				<td><c:out value="${list.unit}"></c:out></td>
				<td><c:out value="${list.price}" /></td>
			</c:when>
			<c:when test="${empty list}">
				<td colspan="5"><h2>현재 상품이 없습니다.</h2>
			</c:when>
		</c:choose>
		<tr>
		</tr>
	</table>



	<!-- <table>
		<tr>
			<td>제품 설명</td>
			<td>러닝머신, treadmill (running machine), foldable</td>
		</tr>
		<tr>
			<td>영문, issa</td>
			<td>러닝머신, treadmill (running machine), foldable</td>
		</tr>
		<tr>
			<td>비고</td>
			<td>2023-01</td>
		</tr>
	</table> -->
</body>
</html>