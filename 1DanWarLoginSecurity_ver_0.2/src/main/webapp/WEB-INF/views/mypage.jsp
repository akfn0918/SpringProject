<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	request.setCharacterEncoding("UTF-8");
	String address = (String)session.getAttribute("address");
	String name = (String)session.getAttribute("name");
	String phone = (String)session.getAttribute("phone");
	String email = (String)session.getAttribute("email");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>일단배달</title>
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
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="logout">로그아웃</a></li>
                        <li class="nav-item"><a class="nav-link" href="mypage">마이페이지</a></li>
                    </ul>
                    <form class="d-flex" action="cart">
                        <button class="btn btn-outline-danger" type="submit">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-danger text-white ms-1 rounded-pill">Click here</span>
                        </button>
                    </form>
                </div>
            </div>
        </nav>
                
        <!-- Header-->
        <header class="bg-danger" style="margin-top:50px;">
            <div class="container px-4 px-lg-5 my-1">
                <div class="text-center text-white">
                    <h3 class="display-6 fw-bolder">MY PAGE</h3>
                </div>
            </div>
        </header> <br>

                
                                <div class="col-md-13 mb-13">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title" style="text-align:center">'일'단 배달 회원등급</h2>
                            <p class="card-text" style="text-align:center">Gold : 월 주문 5건 이상 또는 월 주문 금액 20만원 이상 ▶ 각 주문건당 15% 할인<br>
                                            Silver : 월 주문 3건 이상 또는 월 주문 금액 10만원 이상 ▶ 각 주문건당 5% 할인<br>
                                            Bronze : 신규 회원 등급   </p>
                        </div>
                    </div>
                </div>
        
        <!-- Section-->
        <section id="content" >
        <div class="content-wrap">
            <div class="container clearfix">
            <div class="container-fluid" style="margin-top:40px">
            <div class="clear"></div>
          </div>

            <div class="col_6 bottommargin-sm col_last">
              <form class="row was-validated form-signin" action=join.do method="POST">
             
                <div class="col-6 topmargin">
                  <label for=unamel>이름</label>
                  <input type="text" name="name" id="name" class="form-control" placeholder="<%=name %>" required autofocus/>
                  <div class="valid-feedback">입력되었습니다.</div>
              <div class="invalid-feedback">입력해주세요.</div>
              <div class="col-12 topmargin">
                  <label>비밀번호</label>
                  <input type="password" name="pw" id="pw" class="form-control" placeholder="" required/>
                  <div class="valid-feedback">입력되었습니다.</div>
                 <div class="invalid-feedback">입력해주세요.</div>
                </div>

              <label for=unamel>주소</label>
                   <br/>
                  <input type="text" class="form-control" id="zipNo" name="address" placeholder="<%=address %>">
                  <input type="text" class="form-control" id="addr" readonly>
                  <input type="text" class="form-control" id="addrDetail" readonly>
                  <button type="button" class="btn btn-outline-danger"  onclick="javascript:goPopup();">주소입력</button>
                 
                  <br/>
                  <br/>
                </div>
                
                <div class="col-6">
                  <label>연락처</label><br />
                  <div class="input-group">
                    <select class="custom-select " name="prefix" id="prefix" style="max-width: 100px;" required>
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                    <input type="text" name="phone" id="phone" class="form-control" placeholder="<%=phone %>" required autofocus/>
                 <div class="invalid-feedback">입력해주세요.</div>
                  </div><!-- phone -->
                  
                <label for=unamel>이메일</label>
                  <input type="text" name="name" id="name" class="form-control" placeholder="" required />
                  <div class="valid-feedback">입력되었습니다.</div>
              <div class="invalid-feedback">입력해주세요.</div>
              <br><br><br><br>
            <form action="index2" method="get">
            <button type="submit" name="btn-send" id="btn-send" class="btn bcol-12 bg-danger text-white"
                  style="margin-top:40px; margin-bottom:40px; width:480pt;height:30pt;">수정완료</button>
         </form>
         
             </div>
          </div>
        </div>
        </div>
        
        <script>
            var goPopup = function(){
            var pop = window.open("/jusopopup","pop","width=600,height=420, scrollbars=yes, resizable=yes");
            }
            var jusoCallBack = function(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo){
   
            document.getElementById("zipNo").value = zipNo;
            document.getElementById("addr").value = roadAddrPart1;
            if(addrDetail.length>30){
            alert('상세주소가 너무 길어 다시 입력해야 합니다.');
            return;
            }
            document.getElementById("addrDetail").value = addrDetail;
            }
      </script>
        
      </section>
        <!-- Footer-->
 <jsp:include page = "/css/footer.jsp" flush = "false"/> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>