<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메뉴수정</h1>
	<form action="mcdonaldUpdate">
	<table>
			<tr><td>음식이름</td><td>${food }</td></tr>
			<tr><td>가격</td><td><input type="number" value="${price}" name="price"/>
			<input type="hidden" value="${food }" name="food" /></td></tr>
			<tr><td colspan="2"><input type="submit" value="수정하기" /></td></tr>
		</table>
	</form>
	<a href="mcdonaldDelete?food=${food }">메뉴삭제</a>
	<a href="mcdonaldallmenu">[메뉴판으로]</a>	
</body>
</html>