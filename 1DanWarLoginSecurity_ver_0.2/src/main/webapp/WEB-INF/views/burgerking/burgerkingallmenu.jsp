<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <c:if test="${address==null }">
                    <p class="lead fw-normal text-white-50 mb-0">로그인 후 이용해주세요</p><br>
                    </c:if>
                </div>
            </div>
        </header>
          
  <div class="container"> 
       <div class="table-responsive-sm" style="margin-left:20%">
          <img src="./img/burgerking.PNG" width="150" height="150"> 종로3가점
          
        <div class="col-xl-8">

    <!-- Default Tabs -->
              <ul class="nav nav-tabs d-flex" id="myTabjustified" role="tablist">
                <li class="nav-item flex-fill" role="presentation">
                  <button class="nav-link w-100 active" id="info-tab" data-bs-toggle="tab" data-bs-target="#info-justified" type="button" role="tab" aria-controls="home" aria-selected="true">Info</button>
                </li>
                <li class="nav-item flex-fill" role="presentation">
                  <button class="nav-link w-100" id="menu-tab" data-bs-toggle="tab" data-bs-target="#menu-justified" type="button" role="tab" aria-controls="menu" aria-selected="true">Menu</button>
                </li>

              </ul>


              <div class="tab-content pt-2" id="myTabjustifiedContent">
                <div class="tab-pane fade show active" id="info-justified" role="tabpanel" aria-labelledby="info-tab">
                                    <i class="bi bi-alarm"></i>   영업시간<br>
                  <h7>10:40 - 21:30</h7><hr>

         <i class="bi bi-shop"></i>   업체 정보<br>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">전화번호</div>
                    <div class="col-lg-9 col-md-8">050718616360 ('일'단배달 제공 번호)</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">주소</div>
                    <div class="col-lg-9 col-md-8">   서울 종로구 명륜4가 188-4 동화빌딩</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">부가 정보</div>
                    <div class="col-lg-9 col-md-8">세스코멤버스 사업장</div>
                  </div><hr>

         <i class="bi bi-cash-coin"></i>   결제 정보<br>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">최소주문금액</div>
                    <div class="col-lg-9 col-md-8">8,000원</div>
                  </div>

                  <div class="row">
                    <div class="col-lg-3 col-md-4 label">결제 수단</div>
                    <div class="col-lg-9 col-md-8">신용카드 , 현금 , 카카오페이</div>
                  </div><hr>


                <i class="bi bi-upc-scan"></i>   원산지<br>
                
                
                  <h7>미트볼(호주산)/스테이크(미국산)/베이컨, 살라미, 페퍼로니, 풀드포크(미국산)/치킨(미국산)/터키가슴살(외국산(칠레, 미국, 헝가리 등))/참치(태국산)/햄(외국산(독일, 미국, 네덜란드 등)과 국내산 섞음)/새우(베트남산)</h7><hr>

         <i class="bi bi-geo-alt"></i>가게 위치<br>
         <div id="map" style="margin-top:30px;margin-left:10%;width:500px;height:200px;"></div>
                </div>




                <div class="tab-pane fade" id="menu-justified" role="tabpanel" aria-labelledby="menu-tab"><br>
                           <div class="text-center">     
   <table border="1" style="margin-left:240px">
      <tr><th></th><th></th><th> </th></tr>
      <c:forEach var="burgerking" items="${burgerkingallmenu}">
         <tr>
            <th>&nbsp;&nbsp;${burgerking.food}&nbsp;&nbsp;</th> <th>&nbsp;${burgerking.price}&nbsp;&nbsp;&nbsp;</th>
            <th><button type="button" onclick="location.href='CartPro?food=${burgerking.food}&price=${burgerking.price}';">+</button></th>
            
         </tr>
      </c:forEach>
   </table><br><br>
   
<!--    <a href="burgerkingInsertMenu">[메뉴 추가]</a>
   <a href="burgerkingUpdateForm">[메뉴 수정]</a> -->
<!--    <a href="cart">[장바구니]</a> -->
   <a href="/">다른 메뉴</a><br><hr>
   
   
                               <i class="bi bi-hand-thumbs-up"></i>이달의 행사<br><br>
                  <h7><매장 직접 방문> 포장 주문의 경우 주문금액 8,000이상에 한해 각 주문건 당 2,000원 할인</h7><br><br>


                    <div class="text-center">
                      <a class="btn btn-outline-dark mt-auto" href="https://www.mcdonalds.co.kr/kor/main.do">맥도날드 홈페이지 바로가기</a></div>
                    </div>
                    
   </div>
                </div>
              </div><!-- End Default Tabs -->

            </div>
          </div>

        </div>
        <hr><br>

<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86265ee2a8a0c3e697dac57e53820a97"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.57097018210591, 126.99246334307693), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.57097018210591, 126.99246334307693); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다


// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
        <!-- Footer-->
 <jsp:include page = "/css/footer.jsp" flush = "false"/>  
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        
</body>
</html>
