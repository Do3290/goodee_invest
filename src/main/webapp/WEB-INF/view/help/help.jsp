	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta>
<title>헬프 센터</title>
<style>
	.block-articles-item a {
    z-index: 5;
    text-decoration: none;
    color: #191919;
    border: 1px solid #EFEDED;
    background-color: #ffffff;
    display: block;
    padding: 12px 16px;
    height: 100%;
    font-size: 0.9rem;
	}
	.block-articles-item {
    flex-basis: 100%;
    flex-grow: 1;
    flex-shrink: 1;
    margin-bottom: 5px;
    padding-right: 3px;
    padding-left: 3px;
	}
	.block-articles {
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
    margin-left: -3px;
    margin-right: -3px;
	}
	
</style>
</head>
<body class="bb">
    <section style="height:330px" class="section img">
  
	</section>

<div style="padding:auto; width:65%; align:center; margin: 0 auto; padding: 0 5%; padding-top:25px;">
  
    <section class="section">
      <h2 style="text-align:center" class="section-title"><a href="${path}/invest_team/help/terms.do">약관 및 정책</a></h2>
      <div class="block" style="background-color:whitesmoke">
      	<div style="border:1px; float:left; width:33%; ">
          	<li class="block-articles-terms" style="text-align:center;">
          		<a href="${path}/invest_team/help/terms.do" class="item">사용자 이용 약관</a> 
         	</li>
        </div>
        <div style="border:1px; float:left; width:33%;">
         	<li style="text-align:center" class="block-articles-terms">
          		<a href="${path}/invest_team/help/privacy.do" class="item">개인정보 취급 방침</a> 
        	</li>
        </div>
        <div>
		   <li style="text-align:center" class="block-articles-terms">
             <a href="${path}/invest_team/help/commu.do" class="item">커뮤니티 운영 정책</a>    
           </li>
        </div>  
      </div>
    </section>

    <section class="section top5" style="padding-top:20px;">
    	<h2 style="text-align:center" class="section-title">자주 묻는 질문</h2>
    	<div class="block" style="background-color:whitesmoke;">
    	
		 <li style="text-align:center" class="block-articles-items">
		 	<a href="${path}/invest_team/help/cr5-1.do">✍모금액 정산 일정을 알고 싶어요.</a>
		 </li>
		 
		 <li style="text-align:center" class="block-articles-items">
		 	<a href="${path}/invest_team/help/sp1-1.do">🙌크라우드 펀딩과 후원이란 무엇인가요?</a>
		 </li>
		 	
		 <li style="text-align:center" class="block-articles-items">
		 	<a href="${path}/invest_team/help/sp2-1.do">🙌결제에 실패했습니다. 재결제는 어떻게 하나요?</a>
		 </li>
		 	
		 <li style="text-align:center" class="block-articles-items">
		 	<a href="${path}/invest_team/help/cr1-1.do">✍인베스트 프로젝트 규칙</a>
		 </li>
		 
		 <li style="text-align:center" class="block-articles-items">
		 	<a href="${path}/invest_team/help/cr1-2.do">✍펀딩 수수료는 얼마인가요?</a>
		 </li>				   	
    	</div>

    </section>
  
  <section class="section knowledge-base" style="padding-top:20px;">
    <h2 style="text-align:center" class="section-title">주제별로 살펴보기</h2>
    <div>
      
      <div class="block">
        <div class="block-title">
        <a  href='${path}/invest_team/help/support.do' class="title-link">
          <h3>🙌 후원자 센터</h3>
        </a>
        <p class="block-description">프로젝트 후원, 결제, 선물 수령 및 창작자와의 소통에 관한 질문들을 안내드립니다.</p>
        </div>
        <div class="block-content">
        <ul class="block-articles">
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/sp1.do">1. 프로젝트 밀어주기 (후원하기)</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/sp2.do">2. 결제하기</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/sp3.do">3. 선물 전달받기</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/sp4.do">4. 기타</a>
          </li>
          
        </ul>
        </div>
      </div>
         
      <div class="block">
        <div class="block-title">
        <a href='${path}/invest_team/help/creater.do' class="title-link">
          <h3>✍ 창작자 센터</h3>
        </a>
        <p class="block-description">프로젝트 개설부터 펀딩 진행, 선물 실행, 후속 처리 및 후원자와의 소통과 관련하여 알려드립니다.</p>
        </div>
        <div class="block-content">
        <ul class="block-articles">
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/cr1.do">1. 인베스트 플랫폼 알아보기</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/cr2.do">2. 인베스트 펀딩 준비하기</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/cr3.do">3. 인베스트에 프로젝트 올리기</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/cr4.do">4. 펀딩 시작하고 후원자 만나기</a>
          </li>
           <li class="block-articles-item">
            	<a href="${path}/invest_team/help/cr5.do">5. 펀딩 마감 후 선물 전달하기/마무리하기</a>
          </li>
          
        </ul>
        </div>
      </div>
      
      <div class="block">
        <div class="block-title">
        <a href='${path}/invest_team/help/common.do' class="title-link">
          <h3>🙂 공통 사항</h3>
        </a>
        <p class="block-description">인베스트에 대한 일반적인 질문들 및 계정 사용에 관한 질문들을 안내드려요.</p>
        </div>
        <div class="block-content">
        <ul class="block-articles">
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/comm1.do" >1. 인베스트 소개</a>
          </li>
          
          <li class="block-articles-item">
            <a href="${path}/invest_team/help/comm2.do">2. 계정 설정 및 기타</a>
          </li>
          
        </ul>
        </div>
      </div>
      
    </div>
    <section class="call-to-action">
  <p>질문에 대한 답을 찾지 못하셨나요?</p>
  <a class="button button-large" href="../${path}/help/message.do">
    문의하기
  </a>
</section>
  </section>
</div>
</body>
</html>