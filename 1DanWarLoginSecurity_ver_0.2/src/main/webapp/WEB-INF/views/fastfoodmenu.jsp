 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
                
                <jsp:include page = "/css/tap.jsp" flush = "false"/>
                
            </div>
        </header>
<div class="container" style="margin-top:20px;">
<img src="./img/burger.png" class="float-center" width="200" height="200" style="margin-left:40%"/>
              </div>


<form class="float-center"   style="margin-left:10%;padding:10px">
      <div class="card-group" style="padding:10px">
                     
            <div class="col-half">
              <div class="card info-card sales-card">

                <div class="card-body" style="padding:10px">
                  <h5 class="card-title"> 버커킹 <span>| 종로3가점</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <img src="./img/burgerking.PNG">
        
                    </div>
                    <div class="ps-3">
                    <div class="d-flex justify-content-center small text-warning mb-2"> 별점 | &nbsp;
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                       <!--  <div class="bi-star-fill"></div> -->
                                    </div><h6>&nbsp;리뷰 2105</h6>
                      <span class="text-success small pt-1 fw-bold">\14,000 </span> <span class="text-muted small pt-2 ps-1">Available</span>
                    </div>
                  </div>
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto stretched-link" style="margin-left:400px" href="/burgerkingallmenu">선택</a></div>
                </div>
              </div>
            </div>
            
                       
            <div class="col-half">
              <div class="card info-card sales-card">

                <div class="card-body" style="padding:10px">
                  <h5 class="card-title"> 서브웨이 <span>| 종로3가점</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <img src="./img/subway.PNG">
              
                    </div>
                    <div class="ps-3">
                    <div class="d-flex justify-content-center small text-warning mb-2"> 별점 | &nbsp;
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div><h6>&nbsp;리뷰 865</h6>
                      <span class="text-success small pt-1 fw-bold">\8,000 </span> <span class="text-muted small pt-2 ps-1">Available</span>
                    </div>
                  </div>
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto stretched-link" style="margin-left:400px" href="subwayshop.jsp">선택</a></div>
                </div>
              </div>
            </div>
            
               
            <div class="col-half">
              <div class="card info-card sales-card">

                <div class="card-body" style="padding:10px">
                  <h5 class="card-title"> 맥도날드 <span>| 종로3가점</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <img src="./img/mcdonalds.PNG">
                  
                    </div>
                    <div class="ps-3">
                    <div class="d-flex justify-content-center small text-warning mb-2"> 별점 | &nbsp;
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div><h6>&nbsp;리뷰 2556</h6>
                      <span class="text-success small pt-1 fw-bold">\10,000 </span> <span class="text-muted small pt-2 ps-1">Available</span>
                    </div>
                  </div>
                    <div class="text-center"><a class="btn btn-outline-dark mt-auto stretched-link" style="margin-left:400px" href="/mcdonaldallmenu">선택</a></div>
                </div>
              </div>
            </div>                
        </div>
        </form>
        
<jsp:include page = "/css/footer.jsp" flush = "false"/>       