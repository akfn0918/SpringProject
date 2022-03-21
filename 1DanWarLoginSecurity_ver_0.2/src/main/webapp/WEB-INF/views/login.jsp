
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"%>
 <jsp:include page = "/css/header.jsp" flush = "false"/>
<%    session.invalidate();%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<style>

   body{text-align:center;}
</style>

        <!-- Header-->
        <header class="bg-danger" style="margin-top:50px;">
            <div class="container px-4 px-lg-5 my-1"><br>
                <div class="text-center text-white">
                    <p class="lead fw-normal text-white-50 mb-0">로그인 후 이용해주세요</p><br>
                </div>
            </div>
        </header>
        
        
        <!-- Section-->
<section id="content" >
<div class="container">
   <div class="d-flex justify-content-center h-100" style="padding:5%">
      <div class="card">
         <div class="card-header">
            <h3>로그인</h3>
         </div>
         <div class="card-body">
            <form action="/userlogin" method="POST">
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-user-shield"></i></span>
                  </div>
                  <input type="text" name="username" id="username" class="form-control" placeholder="이메일">

               </div>
               <div class="input-group form-group">
                  <div class="input-group-prepend">
                     <span class="input-group-text"><i class="fas fa-key"></i></span>
                  </div>
                  <input type="password" name="password" id="password" class="form-control" placeholder="비밀번호">
               </div>
               <div class="form-group" style="margin-top:10px">
                  <input type="submit" value="Login" class="btn btn-outline-dark  btn-md btn-block login_btn">
               </div>
            </form>
         </div>
         <div class="card-footer">
            <div class="d-flex justify-content-center links text-dark">
               <a href="/join" class="text-dark">회원가입</a>
            </div>

         </div>
      </div>
   </div>
</div>

      </section>
      <div style="margin-top:100px"></div>
        <!-- Footer-->
 <jsp:include page = "/css/footer.jsp" flush = "false"/>       