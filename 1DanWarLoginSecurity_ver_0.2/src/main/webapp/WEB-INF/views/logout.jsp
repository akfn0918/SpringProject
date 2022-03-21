<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <jsp:include page = "/css/header.jsp" flush = "false"/>
<%    session.invalidate();%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<style>

   body{text-align:center;}
</style>

        <!-- Header-->
        <header class="bg-danger" style="margin-top:50px;">
            <div class="container px-4 px-lg-5 my-1">
                <div class="text-center text-white">
                    <h1 class="display-6 fw-bolder">Address</h1>
                </div>
            </div>
        </header>
        
        
        <!-- Section-->
<section id="content" >
<div class="container">
   <div class="d-flex justify-content-center h-100" style="padding:5%">
      <div class="card">
         <div class="card-header">
            <h3>로그아웃 되었습니다.</h3>
         </div>
        
         <div class="card-footer">
            
            <div class="d-flex justify-content-center">
               <a href="/" class="text-dark">HOME</a>
            </div>
            
            
         </div>
      </div>
   </div>
</div>

      </section>
      <div style="margin-top:100px"></div>
        <!-- Footer-->
 <jsp:include page = "/css/footer.jsp" flush = "false"/>       