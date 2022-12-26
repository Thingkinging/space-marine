<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>제품 상세 정보</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>코드번호</td>
			<td><c:out value="${list.IMPA_CD}"/></td>
		</tr>
		<tr>
			<td>단위</td>
			<td><c:out value="${list.UNIT}"/></td>
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
	</table>
	<table>
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
	</table>

</body>
</html>