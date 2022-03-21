<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메뉴 추가</h1>
	<form action="burgerkingInsert">
		<table border="1">
			<tr><td>음식이름입력</td><td><input type="text" name="food"/></td></tr>
			<tr><td>음식가격입력</td><td><input type="text" name="price"/></td></tr>
			<tr><td colspan="2" style="text-align: center;"><input type="submit" value="저장" />
			<input type="reset" value="취소" /></td></tr>
		</table>
	</form>
		<a href="burgerkingallmenu">[메뉴판으로]</a>
	
</body>
</html>