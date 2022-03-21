<%@page import="java.text.DecimalFormat"%>
<%@page import="com.boot.cart.vo.StoreVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	String address = (String)session.getAttribute("address");
	String name = (String)session.getAttribute("name");
%>    
    
<jsp:include page = "/css/header.jsp" flush = "false"/>
       <!-- Header-->
        <header class="bg-danger" style="margin-top:50px;">
            <div class="container px-4 px-lg-5 my-1">
                <div class="text-center text-white"> <br>
                    <h1 class="display-6 fw-bolder">
                    <c:if test="${address!=null }">
                    <p class="lead fw-normal text-white-50 mb-0">【 <%=name %> 】님의 주소</p>
                    <%=address %></h1><br>
                    </c:if>

                </div>
            </div>
        </header>
<%
request.setCharacterEncoding("UTF-8");
ArrayList<StoreVO> cart = null;

Object obj = session.getAttribute("cart");	//세션 객체에서 cart 값을 가져온다.

int totalSum = 0, total = 0;
if(obj == null) {	//세션 정보가 없으면 배열을 생성 : 주문한 제품이 없다
	cart = new ArrayList<StoreVO>();	
} else {			//세션 정보가 있으면 강제로 캐스팅 : 주문한 제품이 있다
	cart = (ArrayList<StoreVO>) obj;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>

<script type="text/javascript">


function fnPay(){
	alert("결제 기능을 지원하지 않습니다.");
}

function fnClear(){
	if(confirm("장바구니를 비우시겠습니까?")) {
		location.href = "ClearCart";	
	}
}

function fnGo(){
	location.href = "/";
}

function fnPayment(price){
	console.log("price == " + price);
	 
}
</script>
</head>
<body>
<div align="center">
	<h3>주문 내역</h3>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>Menu</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Total</th>
		</tr>
<%
		if(cart.size() == 0) {
%>
		<tr align='center'>
			<td colspan= '5'>
				장바구니에 담긴 상품이 없습니다.
		<a href="/">주문하기</a></td>
		</tr>
<%
		} else {
			//int totalSum = 0, total = 0;
			DecimalFormat df = new DecimalFormat("￦#,##0");
			for(int i = 0; i < cart.size(); i++) {
				StoreVO dao = cart.get(i);
		%>
		<tr align= 'center'>
		
			<td><%=(i + 1) %></td>
			<td><%=dao.getFood() %></td>
			<td><%=df.format(Integer.parseInt(dao.getPrice())) %></td>
			<td><%=dao.getCount() %></td>
			<% 
				Integer Price = Integer.parseInt(dao.getPrice());
				total = Price * dao.getCount();
			%>
			<td><%=df.format(total) %></td>
		</tr>
		<% 
			totalSum += total;
		}
		%>
		<tr align = 'center'>
			<td colspan= '4'>
			
<!-- 				<input type='button' value='쇼핑 계속하기' onclick="location.href = 'javascript:history.back();'"/> -->
			</td>
		<td>
		 <%=df.format(totalSum) %>
		 </td>
			</tr>
			
		<% 
			}//if else
		%>
	</table>
		<form action="payment" method="post">
					<!-- <input type='button' value='결제' onclick="location.href='pay';" /> -->
				<%-- <input type='submit' value='결제' onclick="fnPayment(<%=totalSum %>)"; /> --%>
				<input type="submit" value="결제">			
				<input type="hidden" name="price" value="<%=totalSum %>"/>
				<input type='button' value='비우기' onclick="location.href='CartClear';" />
				<input type='button' value='다른 메뉴 추가' onclick="location.href = '/'"/>
		</form>
</div>
</body>

        <!-- Footer-->
 <jsp:include page = "/css/footer.jsp" flush = "false"/>
</html>