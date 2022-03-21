<%--  <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <jsp:include page = "/css/header.jsp" flush = "false"/>
 <%
   request.setCharacterEncoding("UTF-8");
   String name = request.getParameter("name");
   session.setAttribute("name", name);
%>
        <header class="bg-danger" style="margin-top:50px;">
            <div class="container px-4 px-lg-5 my-1">
                <div class="text-center text-white">
                    <h1 class="display-6 fw-bolder">어떤 가게에서 먹을까요?</h1>
                    <p class="lead fw-normal text-white-50 mb-0"><%= name %>님 환영합니다!</p>
                </div>
            </div>
        </header>
          
  <div class="container"> 
       <div class="table-responsive-sm" style="margin-left:20%">
          <img src="./img/mcdonalds.PNG" width="150" height="150"> 종로3가점
          
        <div class="col-xl-8">

          <div class="card">
            <div class="card-body pt-3">
              <!-- Bordered Tabs -->
              <ul class="nav nav-tabs nav-tabs-bordered">
                
                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#shop-overview">Info</button>
                </li>
              
             <li class="nav-item">
                  <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#shop-menu">Menu</button>
                </li>

                <li class="nav-item">
                  <button class="nav-link" data-bs-toggle="tab" data-bs-target="#shop-event">Event</button>
                </li>


              </ul>
               
                <div class="tab-pane fade show active profile-overview" id="shop-overview">
                  
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
                
              <div class="tab-content pt-2">
            <div class="tab-pane fade show active profile-overview" id="shop-menu">
            <div class="text-center">     
            <h3>Menu</h3>

	<h1>메뉴 전체 보기</h1>
	<table border="1">
		<tr><th>음식명</th><th>가격</th><th>장바구니로</th></tr>
		<c:forEach var="mcdonald" items="${mcdonaldallmenu}">
			<tr>
				<th>${mcdonald.food}</th>
				<th>${mcdonald.price}</th>
				<th><button type="button" onclick="location.href='CartPro?food=${mcdonald.food}&price=${mcdonald.price}';">담기</button></th>
				
			</tr>
		</c:forEach>
	</table> <br />
	
	
	<a href="mcdonaldInsertMenu">[메뉴 추가]</a>
	<a href="mcdonaldUpdateForm">[메뉴 수정]</a>
	<a href="cart">[장바구니]</a>
	<a href="/">[메인으로]</a>

      </div>
      </div>

                <div class="tab-pane fade profile-edit pt-3" id="shop-event">

                  <!-- Profile Edit Form -->
                  

                  <i class="bi bi-hand-thumbs-up"></i>이달의 행사<br><br>
                  <h7><매장 직접 방문> 포장 주문의 경우 주문금액 8,000이상에 한해 각 주문건 당 2,000원 할인</h7><br><br>


                    <div class="text-center">
                      <a class="btn btn-outline-dark mt-auto" href="https://www.mcdonalds.co.kr/kor/main.do">맥도날드 홈페이지 바로가기</a></div>
                    </div>

                </div>

                </div>

              </div>

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
</html> --%>