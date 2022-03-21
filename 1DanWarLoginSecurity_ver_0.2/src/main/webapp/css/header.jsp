 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%
	request.setCharacterEncoding("UTF-8");
	String email = (String)session.getAttribute("email");
%>
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
        <title>'일'단배달</title>
        <link href="/css/styles.css" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/" >'일'단 배달</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" 
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent" style="margin-left:750px">
                    <ul class="navbar-nav justify-content-end">
                    	
                    	<sec:authorize access="isAnonymous()">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/userlogin">로그인</a></li>
                        </sec:authorize>
                        
                        <sec:authorize access="isAuthenticated()">
                        <li class="nav-item"><a class="nav-link" href="/user/logout">로그아웃</a></li>
                        </sec:authorize>
                        
                        
                        <sec:authorize access="isAuthenticated()">
                        <li class="nav-item"><a class="nav-link" href="/mypage">마이페이지</a></li>
                        </sec:authorize>
                        
                    </ul>
                    <form class="d-flex" action="/cart">
                        <button class="btn btn-outline-danger" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-danger text-white ms-1 rounded-pill">Click here</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>