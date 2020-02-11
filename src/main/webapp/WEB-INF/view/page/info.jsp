<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<style>
		.tab {
			list-style: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		/* Float the list items side by side */
		.ContentsNavigation__NavLeft-mwsx7i-3 a {
			float: left;
		}
		/* Style the links inside the list items */
		.ContentsNavigation__NavLeft-mwsx7i-3 a {
			display: inline-block;
			text-align: center;
			text-decoration: none;
			padding: 14px 16px;
			font-size: 17px;
			transition:0.3s;
		}
		.ProjectPage__ProjectContentsMainColumn-f3cisk-2.current {
		display: block;
		}
		.ProjectPage__ProjectContentsMainColumn-f3cisk-2{
		display: none;
		background-color:rgb(246,245,245);
		padding: 6px 12px;
		}
	.evTQgg {
    width: 100%;
    margin: 2rem .5rem 1rem;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
	}
	.gXVgCu {
    padding: 1.2rem 1.5rem;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    color: #757575;
    font-size: 1.1rem;
    font-weight: bold;
}
.dQQULI {
    color: #757575;
    -webkit-transition: all .2s;
    transition: all .2s;
    display: inline-block;
    cursor: pointer;
    font-weight: 700;
    padding: .3em 1em;
    font-size: .95em;
    border-radius: 0.28571429rem;
    color: rgba(0,0,0,.7);
    -webkit-transition: all .2s;
    transition: all .2s;
    background-color: #d9d9d9;
}
	.jXFesk {
    color: #757575;
    -webkit-transition: all .2s;
    transition: all .2s;
    display: inline-block;
    cursor: pointer;
    font-weight: 700;
    padding: .3em 1em;
    font-size: .95em;
    border-radius: 0.28571429rem;
	}       
		textarea{
		border: 1px solid #ddd;
    	border-radius: 2px;
    	resize: vertical;
    	width: 100%;
    	outline: none;
    	padding: 10px;
    	min-height: 150px;
	}
	.list_body{
		display: inline-block;
		border:black;
	}
	.imlXFPx{
	box-shadow: 0 1px 2px 0 rgba(0,0,0,.1);
	padding: 1.2rem 1.5rem;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -webkit-justify-content: space-between;
    -ms-flex-pack: justify;
    justify-content: space-between;
    color: #757575;
    font-size: 1.1rem;
    font-weight: bold;
	}
	.jABjIds {
    width: 100vw;
    height: 48px;
    padding: 0;
    background-color: #fff;
    box-shadow: 0 2px 3px rgba(0,0,0,0.1);
    border-top: 1px solid #efefef;
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-align-items: stretch;
    -webkit-box-align: stretch;
    -ms-flex-align: stretch;
    align-items: stretch;
    z-index: 10;
    }
    .inGkRv {
    font-weight: bolder;
    margin-bottom: 1.25rem;
    }
    .cJHfnu {
    padding: 2rem;
    }
    .cWdscR {
    display: inline-block;
    background-color: #000;
    color: #fff;
    font-size: 0.9rem;
    font-weight: bolder;
    padding: 0.2rem 0.6rem;
    margin-bottom: 1.5rem;
}
	a.ContentsNavigation__NavItem-mwsx7i-0.current
	{
	color: rgba(0,0,0,1);
	border-bottom: 3px solid rgba(0,0,0,1);
	padding-bottom: calc(0.5rem - 3px);
	}
}
</style>
</head>
<body>
<div id="react-view">
	<div data-reactroot="" data-reactid="1">
		<div data-reactid="7">
			<div data-reactid="39">
				<div class="ProjectIntroduction__ProjectIntroductionBackground-sc-1o2ojgb-0 gsZkXT" data-reactid="41">
					<div class="Container-gci8y7-0 MskhC" data-reactid="42">
						<div class="ProjectIntroduction__ProjectIntroductionWrapper-sc-1o2ojgb-1 bnFLKn" data-reactid="43">
							<div class="ProjectIntroduction__ProjectOutline-sc-1o2ojgb-2 jbdzfG" data-reactid="44">
								<div class="ProjectIntroduction__ProjectOutlineInner-sc-1o2ojgb-3 fFIyMZ" data-reactid="45">
									<a href="search.do?category=${project.category}" data-reactid="46">
										<span class="ProjectIntroduction__ProjectCategory-sc-1o2ojgb-4 fNvuiJ" data-reactid="47">${project.category}</span>
									</a>
									<h1 class="ProjectIntroduction__ProjectTitle-sc-1o2ojgb-5 cWQlcy" data-reactid="48">${project.subject}</h1>
									<div class="ProjectIntroduction__Creators-sc-1o2ojgb-6 fsPnxP" data-reactid="49">
										<span class="ProfileImg-sc-1vio56c-0 byDyIf" data-reactid="50"></span>
										<a class="ProjectIntroduction__CreatorName-sc-1o2ojgb-7 jDbkqK" href="https://tumblbug.com/u/vertigo/projects" target="_blank" rel="noopener noreferrer" data-reactid="51">${project.id}</a>
									</div>
								</div>
							</div>
							<div class="ProjectIntroduction__ProjectIntroductionMainColumn-sc-1o2ojgb-8 ZOwbJ" style="height: 484px;"data-reactid="52">
								<img src="file/${project.main_imageurl}" width="100%" height="100%">
							</div>
							<aside class="ProjectIntroduction__ProjectIntroductionSubColumn-sc-1o2ojgb-12 fHdIrJ" data-reactid="55">
								<div class="ProjectIntroduction__FundingStatus-sc-1o2ojgb-13 gGVEjs" data-reactid="56">
									<div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY" data-reactid="57">
										<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" data-reactid="58">모인금액</div>
										<div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA" data-reactid="59"><fmt:formatNumber value="${project.support_money}" pattern="#,###"/>
											<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU" data-reactid="61">원</span>
											<span class="ProjectIntroduction__FundingRate-sc-1o2ojgb-17 cNDicH" data-reactid="62">${project.pop}%</span>
										</div>
									</div>
									<div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY" data-reactid="65">
										<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" data-reactid="66">남은시간</div>
										<div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA" data-reactid="67"><c:if test="${project.deadline < 0}">마감</c:if><c:if test="${project.deadline == 0}">당일마감</c:if><c:if test="${project.deadline > 0}">${project.deadline}</c:if>
											<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU" data-reactid="69">일</span>
										</div>
									</div>
									<div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY" data-reactid="70">
										<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" data-reactid="71">후원자</div>
										<div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA" data-reactid="72">${project.supportcnt}
											<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU" data-reactid="74">명</span>
										</div>
									</div>
								</div>
								<div class="FundingInformation-cjd67l-0 lZmZZ" data-reactid="75">
									<div class="FundingInformation__FundingInformationInner-cjd67l-1 ccBEhl" data-reactid="76">
										<a class="move-to-helpcenter" target="_blank" href="https://help.tumblbug.com/hc/ko/categories/115001047348--%ED%9B%84%EC%9B%90%EC%9E%90-%EC%84%BC%ED%84%B0" title="후원자 센터 바로가기" data-reactid="77">후원자 센터 이동</a>
										<div data-reactid="78">펀딩 진행중</div>
										<span data-reactid="79">목표 금액인 ${project.goal}원이 모여야만 결제됩니다.
											<br>결제는 ${project.date} 에 다함께 진행됩니다.
										</span>
									</div>
								</div>
								<div class="ProjectIntroduction__ProjectButtons-sc-1o2ojgb-19 fHOYOE" data-reactid="87">
									<div class="ProjectIntroduction__ProjectButtonsInner-sc-1o2ojgb-20 frPGIq" data-reactid="88">
										<div class="ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 lcgtza" data-reactid="89">
											<button class="Button-sc-1x93b2b-0 KCBYB" data-reactid="90" onclick = "location.href='../user/supporting.do?num=${project.project_num}'">프로젝트 밀어주기</button>
										</div>
									</div> 
								</div>
							</aside>
						</div>
					</div>
				</div>
				<div id="contentsNavigation" data-reactid="108">
					<span style="font-size:0;" data-reactid="109"></span>
					<nav class="ContentsNavigation__ProjectContentsNavigation-mwsx7i-1 jABjIds" data-reactid="110">
						<div class="ContentsNavigation__ProjectContentsNavigationInner-mwsx7i-2 OvVKa" data-reactid="111">
							<div class="ContentsNavigation__NavLeft-mwsx7i-3 buZwam" data-reactid="112">
								<a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB current" onclick="story_show()" id="tab1btn"data-tab="tab1" data-reactid="113">스토리</a>
								<a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB" onclick="funding_show()" id="tab3btn" data-tab="tab3"  data-reactid="117">펀딩 안내</a>		
							</div>
						</div>
					</nav>
				</div>
				<div class="ProjectPage__ProjectContentsBackground-f3cisk-0 bIXbv" data-reactid="118">
					<div class="Container-gci8y7-0 MskhC" data-reactid="119">
						<div class="ProjectPage__ProjectContents-f3cisk-1 dqKUJc" data-reactid="120">
							<div id="tab1"class="ProjectPage__ProjectContentsMainColumn-f3cisk-2 hzJfoW current" data-reactid="121">
								<div class="ProjectPage__MainColumnInner-f3cisk-4 kGPPtA" data-reactid="122">
									<div class="Card-sc-1sgtmvk-0 gBrdMC" data-reactid="123">
										<div class="StoryCard__StoryCardInner-sc-6cra5i-0 imlXFP" data-reactid="124">
											<div class="storyContent">											
												${project.story}						
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="tab3"class="ProjectPage__ProjectContentsMainColumn-f3cisk-2 hzJfoW">
								<div class="ProjectPage__MainColumnInner-f3cisk-4 kGPPtA">
									<div>
										<div class="Card-sc-1sgtmvk-0 gBrdMC">
											<div class="PolicyCard__PolicyCardInner-sc-1wv4nt7-0 cJHfnu">
												<div class="PolicyCard__PolicyCardLabel-sc-1wv4nt7-1 inGkRv">이 프로젝트의 환불 및 교환 정책</div>
													- 프로젝트 마감일 후에는 즉시 제작 및 실행에 착수하는 프로젝트 특성상 단순 변심에 의한 후원금 환불이 불가능합니다.
													- 예상 전달일로부터 15일 이상 선물 전달이 이뤄지지 않을 경우, 환불을 원하시는 분들께는 수수료를 제한 후원금을 환불해 드립니다.
													(플랫폼 수수료: 모금액의 5%, 부가세 별도 / 결제 수수료: 결제 성공액의 3%, 부가세 별도 )
													- 선물 전달을 위한 배송지 및 서베이 답변은 2020년 3월 26일에 일괄 취합할 예정입니다. 이후 배송지 변경이나 서베이 답변 변경을 원하실 때에는 '창작자에게 문의하기'로 개별 문의하셔야 합니다.
													
													- 파손 또는 불량품 수령 시 7일 이내로 교환이 가능합니다.
													- 교환 및 AS 문의는 '창작자에게 문의하기'로 신청해 주세요.
													- 파손이나 불량품 교환시 발생하는 비용은 창작자가 부담합니다. 선물 확인을 위한 포장 훼손 외에 아이템의 가치가 훼손된 경우에는 교환 및 환불이 불가합니다.
													
													- 후원자가 배송지를 잘못 기재하거나 창작자에게 사전 고지 없이 배송지를 수정하여 배송사고가 발생할 경우
													창작자는 최대 1회 재발송 해 드립니다. 배송비 부담은 후원자에게 있습니다.
													
													- 전달된 파일은 타인에게 양도가 가능합니다.
											</div>
										</div>
									</div>
								</div>
							</div>					
							<div class="ProjectPage__ProjectContentsSubColumn-f3cisk-3 eVgvmn" data-reactid="130">
								<div class="ProjectPage__SubColumnInner-f3cisk-5 eAojiy" data-reactid="131">
									<c:forEach var="reward" items="${reward}">
										<div class="RewardCard__RewardCardWrapper-sc-1u66tc0-0 dHxsUr">
											<div class="Card-sc-1sgtmvk-0 gBrdMC" data-reactid="132">
												<div class="RewardCard__RewardCardInner-sc-1u66tc0-1 cUrXrg">
													<div class="RewardCard__RewardHeader-sc-1u66tc0-2 iynKOC">
														<span class="RewardCard__PledgeAmount-sc-1u66tc0-3 MLabx">
															<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>10명이 선택
														</span>
													</div>
													<div class="RewardCard__RewardContents-sc-1u66tc0-7 jSudED">
														<div class="RewardCard__RewardMinimumPledgeAmount-sc-1u66tc0-8 kwNvmv">${reward.reward_goal} +</div>
													</div>
													<div class="RewardCard__Items-sc-1u66tc0-10 hOUlxo">
														<li class="RewardCard__ItemList-sc-1u66tc0-11 jkPMDd">
															<span>${reward.item}  ( X${reward.itemcnt})</span>
														</li>
													</div>
													<div class="RewardCard__DeliveryDate-sc-1u66tc0-12 eshybT">
														<span>예상 전달일 &nbsp;
															<b>${reward.reward_date}</b>
														</span>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
<script>
	$(function() {
			$('div.ContentsNavigation__NavLeft-mwsx7i-3 a').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('div.ContentsNavigation__NavLeft-mwsx7i-3 a').removeClass('current');
				$('.ProjectPage__ProjectContentsMainColumn-f3cisk-2').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('ContentsNavigation__NavItem-mwsx7i-0 current');
			})
		});
	function alllist_show() {
		      document.getElementById("alllist").style.display = "block";
		      document.getElementById("createlist").style.display = "none";
		      document.getElementById("alllistbtn").style="background-color:lightgray;";
		      document.getElementById("createlistbtn").style="background-color:#f6f5f5;";
		   }
	function createlist_show() {
		      document.getElementById("createlist").style.display = "block";
		      document.getElementById("alllist").style.display = "none";
		      document.getElementById("alllistbtn").style="background-color:#f6f5f5";
		      document.getElementById("createlistbtn").style="background-color:lightgray";
		   }
	function story_show() {
		        document.getElementById("tab1btn").style="color:rgba(0,0,0,1);border-bottom:3px solid rgba(0,0,0,1);padding-bottom:calc(0.5rem - 3px);";
		        document.getElementById("tab3btn").style="background-color:white;";
		     }
	function funding_show() {
        document.getElementById("tab3btn").style="color:rgba(0,0,0,1);border-bottom:3px solid rgba(0,0,0,1);padding-bottom:calc(0.5rem - 3px);";
        document.getElementById("tab1btn").style="background-color:white;";
     }
</script>	
</body></html>