 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <jsp:include page = "/css/header.jsp" flush = "false"/>
<% 	session.invalidate(); %>
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

         <!-- F.A.Q Group 2 -->
          <div class="card">
            <div class="card-body">
              <h4 class="card-title">
              자주 묻는 질문 (Q & A) <br><br></h4>
              <h7>'일'단 배달로 음식 주문 후 만족스럽지 못할 때 언제든지 고객센터로 문의해 주세요.
              기준에 따라 일부 또는 최대 100%까지 보상 받으실 수 있습니다.</h7><br><br><br><br>

              <div class="accordion accordion-flush" id="faq-group-2">

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-1" type="button" data-bs-toggle="collapse">
                      환불을 어떻게 받나요?
                    </button>
                  </h2>
                  <div id="faqsTwo-1" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                     ▶ 환불 접수는 홈페이지를 이용하여 접수 부탁드리며, 접수 후 절차는 아래 내용을 참고 부탁드립니다. <br><br>

현금 환불(계좌)의 경우 환불 신청 접수 완료 후 영업일 기준으로 1~2일 정도 소요되나, <br>
환불 금액 계산 등 환불 과정 진행에 따른 추가 기간이 소요되거나 부득이한 사정으로 더 긴 기간이 소요될 수 있습니다. <br><br>


카드 환불의 경우 환불 신청 접수 완료 후 영업일 기준으로 3~7일 정도 소요됩니다. <br>
카드사의 사정에 따라 7일 이상 경과될 수 있습니다. <br><br>

따라서, 정확한 카드 환불 일정은 해당 카드사에 문의하시기 바랍니다.

                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-2" type="button" data-bs-toggle="collapse">
                      결제는 했는데 배달이 안와요.
                    </button>
                  </h2>
                  <div id="faqsTwo-2" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      ▶ 각 가게마다 배달 시간이 상이하며, 개인적인 사정을 파악하기 어려운 점이 있어,<br>
                      챗봇을 통하여 고객님의 성함 및 주문번호를 알려주시면 정확한 확인이 가능한 점 양해 부탁드립니다.<br><br>
                      
                      또한, 가게 측의 사정에 의해 주문 취소가 되었을 경우 100% 환불이 가능한 점 참고 부탁드립니다.
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-3" type="button" data-bs-toggle="collapse">
                      쿠폰 기한은 언제까지 인가요?
                    </button>
                  </h2>
                  <div id="faqsTwo-3" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      ▶ 쿠폰 기한은 쿠폰 발급 당시 명시되어 있으며, 각 쿠폰 당 기간이 상이한 점 양해 부탁드립니다.<br><br>
                      
                      예외로, 회원 가입 축하 쿠폰의 경우 가입 일시로부터 30일이 경과되면 자동으로 소멸되오니 이점 참고 부탁드립니다.
                      
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-4" type="button" data-bs-toggle="collapse">
                      등급은 어떻게 올라가요? / 등급별 혜택은 무엇인가요?
                    </button>
                  </h2>
                  <div id="faqsTwo-4" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                      Gold : 월 주문 5건 이상 또는 월 주문 금액 20만원 이상 ▶ 각 주문건당 15% 할인<br>
                            					 Silver : 월 주문 3건 이상 또는 월 주문 금액 10만원 이상 ▶ 각 주문건당 5% 할인<br>
                            					 Bronze : 신규 회원 등급<br><br>
                            					 
                            					 월 주문 수에 따라 회원등급 조정은 매월 5일에 적용됩니다.<br>
                            					  직전 월에 대한 기준은 매월 1일부터 말일까지 기준이며, 고객님의 등급은 각 마이페이지에서 확인 가능합니다.
                            					 
                          
                    </div>
                  </div>
                </div>

                <div class="accordion-item">
                  <h2 class="accordion-header">
                    <button class="accordion-button collapsed" data-bs-target="#faqsTwo-5" type="button" data-bs-toggle="collapse">
                      회원 탈퇴는 어떻게 하나요?
                    </button>
                  </h2>
                  <div id="faqsTwo-5" class="accordion-collapse collapse" data-bs-parent="#faq-group-2">
                    <div class="accordion-body">
                       ▶ 회원 탈퇴는 별도로 챗봇을 통해 성함과 핸드폰 번호를 남겨주시면,<br>
                       당일 처리될 수 있도록 신속하게 도와드리겠습니다.
                    </div>
                  </div>
                </div>

              </div>

            </div>
          </div>
       
      </section>
        <!-- Footer-->
 <jsp:include page = "/css/footer.jsp" flush = "false"/>       