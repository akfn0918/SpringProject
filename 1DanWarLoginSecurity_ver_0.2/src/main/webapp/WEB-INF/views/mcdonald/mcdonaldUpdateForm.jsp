<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>메뉴 전체 보기</h1>
	<table border="2">
		<tr><th>음식명</th><th>가격</th></tr>
		<c:forEach var="mcdonald" items="${mcdonaldUpdateForm}">
			<tr>
				<th><a href="mcdonaldmenu?food=${mcdonald.food}">${mcdonald.food}</a></th>
				<th>${mcdonald.price}</th>
			</tr>
		</c:forEach>
	</table> <br />
	
	<a href="mcdonaldallmenu">[메뉴판으로]</a>	
	<a href="/">[메인으로]</a>

</body>
</html>