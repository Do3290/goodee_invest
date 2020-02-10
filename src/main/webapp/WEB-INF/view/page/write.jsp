<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	.select12 {
		border: 1px solid #999;
		font-family: inherit;
		border-radius: 0px;
		height: 34px;
	}
</style> 
<script type="text/javascript" src="http://cdn.ckeditor.com/4.5.7/full/ckeditor.js"></script>
<script type="text/javascript" 
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

//이미지 첨부시 화면에 출력
	$(document).ready(function(){
		$("#imgInp").change(function(){
			readURL(this);
		});
	}); 
	function readURL(input){
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$('#blah').attr('src',e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
			$('#blah').css("display","block")
		}
	}

//파일첨부버튼	
	$(function () {
		$('#btn-upload').click(function (e) {
			e.preventDefault();
			$('#imgInp').click();
		});
	});
	
//선물기능추가
	function add_div(){
	    var div = document.createElement('div');
	    div.innerHTML = document.getElementById('present_info').innerHTML;
	    document.getElementById('present').appendChild(div);
	}
	
//배너이미지 새창 띄우기
	function openWin(){  
	    window.open("banner.do", "네이버새창", "width=800, height=500" );  
	}  

</script>
</head>
<body>
<div id="react-view">
	<div data-reactroot="" data-reactid="1">
		<div class="ScrollTop__ScrollTopBtnWrapper-j9uqn7-0 cKbfhA" data-reactid="3">
			<button class="ScrollTop__ScrollTopBtn-j9uqn7-1 bcbYyv" data-reactid="4">
				<span data-reactid="5">최상위로</span>
			</button>
			<i class="_3EDOT6mnWfo2CobuYD5UO7 _2PY6DpDelT9jvKKFjCr7gd _14AOh5T6DdcgeGZ5YUV9uR _1QY7TzdLHKX3-BKPDNNYKF" data-reactid="6"></i>
		</div>
		<div data-reactid="7">
			<div data-reactid="39">
				<div class="ProjectIntroduction__ProjectIntroductionBackground-sc-1o2ojgb-0 gsZkXT" data-reactid="41">
					<div class="Container-gci8y7-0 MskhC" data-reactid="42">
						<div class="ProjectIntroduction__ProjectIntroductionWrapper-sc-1o2ojgb-1 bnFLKn" data-reactid="43">
							<div class="ProjectIntroduction__ProjectOutline-sc-1o2ojgb-2 jbdzfG" data-reactid="44">
								<div class="ProjectIntroduction__ProjectOutlineInner-sc-1o2ojgb-3 fFIyMZ" data-reactid="45">
									<span class="ProjectIntroduction__ProjectCategory-sc-1o2ojgb-4 fNvuiJ" style="background-color: white; border: white;">
										<select class="select12" style="">
											<option value="" selected disabled hidden>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카테고리</option>
											<option>첫번째 선택항목</option>
											<option>두번째 선택항목</option>
											<option>세번째 선택항목</option>
										</select>
									</span>
									<br><br> 
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd _3nB1fZxEqXMiqXF-c7b1XQ  ">
										<input type="text" value="" placeholder="프로젝트 제목을 입력해주세요" style="width:260px">
									</div> 
									<br><br>
									<div class="ProjectIntroduction__Creators-sc-1o2ojgb-6 fsPnxP" data-reactid="49">
										<span class="ProfileImg-sc-1vio56c-0 byDyIf" data-reactid="50"></span>
										<a class="ProjectIntroduction__CreatorName-sc-1o2ojgb-7 jDbkqK" href="https://tumblbug.com/u/vertigo/projects" target="_blank" rel="noopener noreferrer" data-reactid="51">현기증x히치콕</a>
									</div>
								</div>
							</div>
							<div class="ProjectIntroduction__ProjectIntroductionMainColumn-sc-1o2ojgb-8 ZOwbJ" data-reactid="52">
								<figure class="ProjectIntroduction__ProjectCoverImageFigure-sc-1o2ojgb-9 fUBtAC" style="height:100%; padding: 0 0 0%;" data-reactid="53">
									<img id="blah" src="#" style="width:100%; height: 100%; display: none;"/>
								</figure>
							</div>
							<aside class="ProjectIntroduction__ProjectIntroductionSubColumn-sc-1o2ojgb-12 fHdIrJ" data-reactid="55">
								<div class="ProjectIntroduction__FundingStatus-sc-1o2ojgb-13 gGVEjs" data-reactid="56" style="height: 198px;">
									<div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY" data-reactid="57">
										<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV" data-reactid="58">목표금액</div>
										<div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA" data-reactid="59">
											<input type="text" value="" placeholder="금액입력" style="width:250px">
											<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU" data-reactid="61">원</span>
										</div>
									</div>
									<div class="ProjectIntroduction__Metric-sc-1o2ojgb-14 cZUBTY">
										<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV">목표기간</div>
										<div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA">
											<input type="date" style="width:250px">
											<span class="ProjectIntroduction__Small-sc-1o2ojgb-18 lnSbIU" data-reactid="61">까지</span>
										</div>
									</div>
								</div>
								<div class="FundingInformation-cjd67l-0 lZmZZ" data-reactid="75">
									<div class="FundingInformation__FundingInformationInner-cjd67l-1 ccBEhl" data-reactid="76">
										<div class="ProjectIntroduction__StatusTitle-sc-1o2ojgb-15 hrvSQV">프로젝트요약</div>
										<div class="ProjectIntroduction__StatusValue-sc-1o2ojgb-16 lgJcVA">
											<textarea rows="3" cols="60"></textarea>
										</div>
									</div>
								</div>
								<div class="ProjectIntroduction__ProjectButtons-sc-1o2ojgb-19 fHOYOE" data-reactid="87">
									<div class="ProjectIntroduction__ProjectButtonsInner-sc-1o2ojgb-20 frPGIq" data-reactid="88">
										<div class="ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 lcgtza" data-reactid="89">
											<button class="Button-sc-1x93b2b-0 KCBYB" data-reactid="90" id="btn-upload">메인이미지첨부</button>
											<input type="file" accept=".gif, .jpg, .png" id="imgInp" style="display: none;">
										</div>
										<div class="ProjectIntroduction__PrimaryButton-sc-1o2ojgb-21 lcgtza" data-reactid="89">
											<button class="Button-sc-1x93b2b-0 KCBYB" data-reactid="90" onclick="openWin()">배너이미지설정</button>
										</div>
									</div>
								</div>
							</aside>
						</div>
					</div>
				</div>
			</div>
			<div id="contentsNavigation" data-reactid="108">
				<span style="font-size:0;" data-reactid="109"></span>
				<nav class="ContentsNavigation__ProjectContentsNavigation-mwsx7i-1 jABjId" data-reactid="110">
					<div class="ContentsNavigation__ProjectContentsNavigationInner-mwsx7i-2 OvVKa" data-reactid="111">
						<div class="ContentsNavigation__NavLeft-mwsx7i-3 buZwam" data-reactid="112">
							<a class="ContentsNavigation__NavItem-mwsx7i-0 cjInbB" style="color:rgba(0,0,0,1);border-bottom:3px solid rgba(0,0,0,1);padding-bottom:calc(0.5rem - 3px);" data-reactid="113">스토리</a>
						</div>
					</div>
				</nav>
			</div>
			<div class="ProjectPage__ProjectContentsBackground-f3cisk-0 bIXbv" data-reactid="118">
				<div class="Container-gci8y7-0 MskhC" data-reactid="119">
					<div class="ProjectPage__ProjectContents-f3cisk-1 dqKUJc" data-reactid="120">
						<div class="ProjectPage__ProjectContentsMainColumn-f3cisk-2 hzJfoW" data-reactid="121">
							<div class="ProjectPage__MainColumnInner-f3cisk-4 kGPPtA" data-reactid="122">
								<div class="Card-sc-1sgtmvk-0 gBrdMC" data-reactid="123">
									<div class="StoryCard__StoryCardInner-sc-6cra5i-0 imlXFP" data-reactid="124">
										<div class="storyContent">
											<table>
												<tr>
													<td>내용</td>
													<td><textarea rows="15" cols="80" id="content"></textarea>
													<script> 
														CKEDITOR.replace("content", {
															filebrowserImageUploadUrl : "imgupload.do"
														});
													</script></td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="ProjectPage__ProjectContentsSubColumn-f3cisk-3 eVgvmn" data-reactid="130">
							<div class="ProjectPage__SubColumnInner-f3cisk-5 eAojiy" data-reactid="131" style="min-height: 385px;" id="present">
								<div class="Card-sc-1sgtmvk-0 gBrdMC">
									<div class="RewardCard__RewardCardInner-sc-1u66tc0-1 cUrXrg">
										<div class="RewardCard__RewardHeader-sc-1u66tc0-2 iynKOC" style="color:black;">
											<span class="RewardCard__PledgeAmount-sc-1u66tc0-3 MLabx">
												선물구성
											</span>
										</div>
										<div class="RewardCard__RewardContents-sc-1u66tc0-7 jSudED">
											<input type="text" value="" placeholder="후원금액입력" style="width:250px; font-size:1.75rem; font-weight: bold;">
										</div>
										<div class="RewardCard__RewardDescription-sc-1u66tc0-9 iwlqIk">
											<span class="RewardCard__PledgeAmount-sc-1u66tc0-3 MLabx"  style="color: black; font-weight:bold">
												선물설명
											</span>
											<textarea rows="3" cols="60"></textarea>
										</div>
										<div class="RewardCard__Items-sc-1u66tc0-10 hOUlxo" style="width:250px;">
											<li class="RewardCard__ItemList-sc-1u66tc0-11 jkPMDd">
												<input type="text" value="" placeholder="선물입력" style="font-size:1.5rem;">
											</li>
											<br>
											<li class="RewardCard__ItemList-sc-1u66tc0-11 jkPMDd">
												<input type="text" value="" placeholder="선물입력" style="font-size:1.5rem;">
											</li>
										</div>
									</div>
								</div>
								<div class="Rewards-c484ad-0 flLtKW" id="present_info" style="display:none;">
									<div class="RewardCard__RewardCardWrapper-sc-1u66tc0-0 dHxsUr">
										<div class="Card-sc-1sgtmvk-0 dEGWGh">
											<div class="RewardCard__RewardCardInner-sc-1u66tc0-1 cUrXrg">
												<div class="RewardCard__RewardHeader-sc-1u66tc0-2 iynKOC" style="color:black;">
													<span class="RewardCard__PledgeAmount-sc-1u66tc0-3 MLabx">
														선물구성
													</span>
												</div>
												<div class="RewardCard__RewardContents-sc-1u66tc0-7 jSudED">
													<input type="text" value="" placeholder="후원금액입력" style="width:250px; font-size:1.75rem; font-weight: bold;">
												</div>
												<div class="RewardCard__RewardDescription-sc-1u66tc0-9 iwlqIk">
													<span class="RewardCard__PledgeAmount-sc-1u66tc0-3 MLabx"  style="color: black; font-weight:bold">
														선물설명
													</span>
													<textarea rows="3" cols="60"></textarea>
												</div>
												<div class="RewardCard__Items-sc-1u66tc0-10 hOUlxo" style="width:250px;">
													<li class="RewardCard__ItemList-sc-1u66tc0-11 jkPMDd">
														<input type="text" value="" placeholder="선물입력" style="font-size:1.5rem;">
													</li>
													<br>
													<li class="RewardCard__ItemList-sc-1u66tc0-11 jkPMDd">
														<input type="text" value="" placeholder="선물입력" style="font-size:1.5rem;">
													</li>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<button onclick="add_div()">+</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
 
</body></html>