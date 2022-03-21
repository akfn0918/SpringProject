<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일단배달</title>
</head>
<body>

</body>
</html> 
 <jsp:include page = "/css/header.jsp" flush = "false"/>

        <!-- Header-->
        <header class="bg-danger py-1">
            <div class="container px-4 px-lg-5 my-1">
                <div class="text-center text-white">
                    <h1 class="display-6 fw-bolder">Address</h1>
                    <p class="lead fw-normal text-white-50 mb-0">로그인 후 이용해주세요</p>
                </div>
            </div>
        </header>
        <!-- Section-->
<section id="content" >
        <div class="content-wrap">
            <div class="container clearfix">
            <div class="container-fluid" style="margin-top:80px">
            <div class="clear"></div>
          </div>

            <div class="col_6 bottommargin-sm col_last">
              <form class="row was-validated form-signin" action=/signup method="POST">
             
                <div class="col-6 topmargin">
                  <label for=unamel>이름</label>
                  <input type="text" name="membername" id="membername" class="form-control" placeholder="" required autofocus/>
                  <div class="valid-feedback">입력되었습니다.</div>
              <div class="invalid-feedback">입력해주세요.</div>
              <div class="col-12 topmargin">
                  <label>비밀번호</label>
                  <input type="password" name="password" id="password" class="form-control " placeholder="" required/>
                  <div class="valid-feedback">입력되었습니다.</div>
                 <div class="invalid-feedback">입력해주세요.</div>
                </div>
                        
                        
                            <label for=unamel>주소</label>
                   <br/>
                  <input type="text" class="form-control" id="zipNo"  name="address" id="address" class="form-control" readonly>
                  <input type="text" class="form-control" id="addr"  name="address" id="address" class="form-control" readonly>
                  <input type="text" class="form-control" id="addrDetail"  name="address" id="address" class="form-control" readonly>
                  <button type="button" class="btn btn-outline-danger" onclick="javascript:goPopup();">주소입력</button>
                  <br/>
                  <br/>
                </div>          
                        
                        
                </div>
                
                <div class="col-6">
                  <label>연락처</label><br />
                  <div class="input-group">
                    <select class="custom-select " name="prefix" id="prefix" style="max-width: 100px;" required>
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                    </select>
                    <input type="text" name="phone" id="phone" class="form-control"  placeholder="" required/>
                 <div class="invalid-feedback">입력해주세요.</div>
                  </div><!-- phone -->
                  
                <label for=unamel>이메일</label>
                  <input type="text" name="email" id="email" class="form-control" placeholder="" required />
                  <div class="valid-feedback">입력되었습니다.</div>
              <div class="invalid-feedback">입력해주세요.</div>
                 
                 <div class="col-6">
                  <label>개인정보 수집 및 이용 동의</label>
                  <div class="btn-group btn-group-toggle d-flex" data-toggle="buttons">
                    <label class="btn btn-outline-secondary btn-sm ls0 nott">
                      <input type="radio" name="accept-consent" id="accept-consent" autocomplete="off" value="true" /> 동의
                    </label>
                    <label class="btn btn-outline-secondary btn-sm ls0 nott">
                      <input type="radio" name="accept-consent" id="accept-consent" autocomplete="off" value="false" /> 미동의
                    </label>
                  </div>
                </div> 
                </div>
                             
                
                
                <div class="col-12">
                  <button type="submit" name="btn-send" id="btn-send" class="btn bcol-12 bg-danger text-white" style="margin-top:40px; margin-bottom:40px ;">회원가입하기</button>
                </div>
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

 <jsp:include page = "/css/footer.jsp" flush = "false"/>       