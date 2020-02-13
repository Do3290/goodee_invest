<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<style>
		*{margin:0;padding:0;}
		ul,li{list-style:none;}
		#slide{height:400px;position:relative;overflow:hidden;}
		#slide ul{width:400%;height:100%;transition:1s;}
		#slide ul:after{content:"";display:block;clear:both;}
		#slide li{float:left;width:25%;height:100%;}
		#slide li:nth-child(1){background:#faa;}
	    #slide li:nth-child(2){background:#ffa;}
		#slide li:nth-child(3){background:#faF;}
		#slide li:nth-child(4){background:#aaf;}
		#slide input{display:none;}
		#slide label{display:inline-block;vertical-align:middle;width:10px;height:10px;border:2px solid #666;background:#fff;transition:0.3s;border-radius:50%;cursor:pointer;}
		#slide .pos{text-align:center;position:absolute;bottom:10px;left:0;width:100%;text-align:center;}
		#pos1:checked~ul{margin-left:0%;}
		#pos2:checked~ul{margin-left:-100%;}
		#pos3:checked~ul{margin-left:-200%;}
		#pos4:checked~ul{margin-left:-300%;}
		#pos1:checked~.pos>label:nth-child(1){background:#666;}
		#pos2:checked~.pos>label:nth-child(2){background:#666;}
		#pos3:checked~.pos>label:nth-child(3){background:#666;}
		#pos4:checked~.pos>label:nth-child(4){background:#666;}
	</style>
	<div id="slide">
		<input type="radio" name="pos" id="pos1" checked>
		<input type="radio" name="pos" id="pos2">
		<input type="radio" name="pos" id="pos3">
		<input type="radio" name="pos" id="pos4">
		<ul>
			<li>
				<a href="info.do?num=${bestprojectlist[0].project_num}"><img src="file/${bestprojectlist[0].banner_imageurl}" style="width: 100%; height: 100%;"></a>
				<div class="HeroWidget__HeroTextWrapper-xxrhv3-5 ejvDHe" data-reactid="69" style="max-width: 1080px; margin: 0 auto; position: sticky; color:white;" >
					<h1 class="HeroWidget__HeroTitle-xxrhv3-6 fmKiut" data-reactid="70"><br></h1>
					<div class="HeroWidget__HeroDescription-xxrhv3-7 armmr" data-reactid="71">${bestprojectlist[0].subject}</div>
				</div>
			</li>
			<li>
				<a href="info.do?num=${bestprojectlist[1].project_num}"><img src="file/${bestprojectlist[1].banner_imageurl}" style="width: 100%; height: 100%;"></a>
				<div class="HeroWidget__HeroTextWrapper-xxrhv3-5 ejvDHe" data-reactid="69" style="max-width: 1080px; margin: 0 auto; position: sticky; color:white;">
					<h1 class="HeroWidget__HeroTitle-xxrhv3-6 fmKiut" data-reactid="70"><br></h1>
					<div class="HeroWidget__HeroDescription-xxrhv3-7 armmr" data-reactid="71">${bestprojectlist[1].subject}</div>
				</div>
			</li>
			<li>
				<a href="info.do?num=${bestprojectlist[2].project_num}"><img src="file/${bestprojectlist[2].banner_imageurl}" style="width: 100%; height: 100%;"></a>
				<div class="HeroWidget__HeroTextWrapper-xxrhv3-5 ejvDHe" data-reactid="69" style="max-width: 1080px; margin: 0 auto; position: sticky; color:white;">
					<h1 class="HeroWidget__HeroTitle-xxrhv3-6 fmKiut" data-reactid="70"><br></h1>
					<div class="HeroWidget__HeroDescription-xxrhv3-7 armmr" data-reactid="71">${bestprojectlist[2].subject}</div>
				</div>	
			</li>
			<li>
				<a href="info.do?num=${bestprojectlist[3].project_num}"><img src="file/${bestprojectlist[3].banner_imageurl}" style="width: 100%; height: 100%;"></a>
				<div class="HeroWidget__HeroTextWrapper-xxrhv3-5 ejvDHe" data-reactid="69" style="max-width: 1080px; margin: 0 auto; position: sticky; color:white;">
					<h1 class="HeroWidget__HeroTitle-xxrhv3-6 fmKiut" data-reactid="70"><br></h1>
					<div class="HeroWidget__HeroDescription-xxrhv3-7 armmr" data-reactid="71">${bestprojectlist[3].subject}</div>
				</div>
			</li>
		</ul>
		<p class="pos">
			<label for="pos1"></label>
			<label for="pos2"></label>
			<label for="pos3"></label>
			<label for="pos4"></label>
		</p>
	</div>
	<div class="FrontPage__HomeWrapper-sc-1wto2iu-0 gVMVIx" data-reactid="40">
		<div class="Container-gci8y7-0 MskhC" data-reactid="379">
			<div class="FrontPage__ProjectsCarousel-sc-1wto2iu-1 ckBjxy">
				<div class="Carousel__CarouselHeader-sc-72guw4-1 DOQRx">
					<span class="Carousel__CarouselTitle-sc-72guw4-2 cnLQNY">
						<a class="Carousel__Link-sc-72guw4-0 kCEWtQ" href="search.do?project=pop">인기 추천 프로젝트
							<svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
								<polyline points="9 18 15 12 9 6"></polyline>
							</svg>
						</a>
					</span>
					<div class="Carousel__CarouselButtons-sc-72guw4-3 lmJehc">
						<button class="Button-sc-1x93b2b-0 hioDQR" style="opacity: 0.2;" id="bestrightBtn" onclick="bestproject_right()">
							<i class="_36JoJH6uhmIKdE1bWDYUlM _1XlDYEGI6NQt_YZkSA5u6N _1QY7TzdLHKX3-BKPDNNYKF"></i>
						</button>
						<button class="Button-sc-1x93b2b-0 hioDQR" style="opacity: 1;" id="bestleftBtn" onclick="bestproject_left()">
							<i class="WU1ox0-AeDX_zneKjnNMO _1XlDYEGI6NQt_YZkSA5u6N _1QY7TzdLHKX3-BKPDNNYKF"></i>
						</button>
					</div>
				</div>
				<div class="react-swipe-container carousel" style="overflow: hidden; visibility: visible; position: relative;">
					<div style="overflow: hidden; position: relative; width: 5400px;">
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="0" style="float: left; width: 1080px; position: relative; transition-property: transform; left: 0px; transition-duration: 300ms; transform: translate(0px, 0px) translateZ(0px);" id="bestproject">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[0].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[0].main_imageurl}" alt="카드캡터 체리 클리어카드편 굿즈 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[0].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[0].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[0].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[0].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[0].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[0].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[1].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[1].main_imageurl}" alt="한국의 판타지 명작 <하얀 늑대들> 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[1].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[1].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[1].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[1].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[1].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[1].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[2].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[2].main_imageurl}" alt="[eBook] 성희롱 고발 직장인의 5년 실패기 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[2].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[2].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[2].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[2].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[2].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[2].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[3].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[3].main_imageurl}" alt="오카자키 교코의 『헬터 스켈터』(2003) 출간 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[3].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[3].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[3].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[3].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[3].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[3].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="1" style="float: left; width: 1080px; position: relative; transition-property: transform; left: -1080px; transition-duration: 300ms; transform: translate(1080px, 0px) translateZ(0px);" id="bestproject2">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[4].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[4].main_imageurl}" alt="스티커 굿즈 제작, 꼭 체크해야 하는 3가지 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[4].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[4].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[4].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[4].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[4].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[4].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[5].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[5].main_imageurl}" alt="환상의 동물들, 다 모여! <세계괴물백과> - 서양편 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[5].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[5].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[5].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[5].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[5].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[5].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[6].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[6].main_imageurl}" alt="육질은 부드럽게, 풍미는 진하게! 와즈나보이의 숙성스테이크 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[6].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[6].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[6].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[6].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[6].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[6].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${bestprojectlist[7].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${bestprojectlist[7].main_imageurl}" alt="나이트런 10주년 헌정 모바일 게임 &quot;나이트런:레콘키스타&quot; 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${bestprojectlist[7].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${bestprojectlist[7].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${bestprojectlist[7].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${bestprojectlist[7].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj"><fmt:formatNumber value="${bestprojectlist[7].support_money}" pattern="#,###" />원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${bestprojectlist[7].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="FrontPage__ProjectsCarousel-sc-1wto2iu-1 ckBjxy">
				<div class="Carousel__CarouselHeader-sc-72guw4-1 DOQRx">
					<span class="Carousel__CarouselTitle-sc-72guw4-2 cnLQNY">
						<a class="Carousel__Link-sc-72guw4-0 kCEWtQ" href="search.do?project=end">마감 임박 프로젝트
							<svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
								<polyline points="9 18 15 12 9 6"></polyline>
							</svg>
						</a>
					</span>
					<div class="Carousel__CarouselButtons-sc-72guw4-3 lmJehc">
						<button class="Button-sc-1x93b2b-0 hioDQR" style="opacity: 0.2;" onclick="endproject_right()" id="endingrightBtn">
							<i class="_36JoJH6uhmIKdE1bWDYUlM _1XlDYEGI6NQt_YZkSA5u6N _1QY7TzdLHKX3-BKPDNNYKF"></i>
						</button>
						<button class="Button-sc-1x93b2b-0 hioDQR" style="opacity: 1;" onclick="endproject_left()" id="endingleftBtn">
							<i class="WU1ox0-AeDX_zneKjnNMO _1XlDYEGI6NQt_YZkSA5u6N _1QY7TzdLHKX3-BKPDNNYKF"></i>
						</button> 
					</div>
				</div>
				<div class="react-swipe-container carousel" style="overflow: hidden; visibility: visible; position: relative;">
					<div style="overflow: hidden; position: relative; width: 2160px;">
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="0" style="float: left; width: 1080px; position: relative; transition-property: transform; left: 0px; transition-duration: 300ms; transform: translate(0px, 0px) translateZ(0px);" id="endingproject">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[0].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[0].main_imageurl}" alt="거부할 수 없는 우리의 전통 디저트. 스토리텔링 컬러링 북 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[0].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[0].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[0].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[0].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[0].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[0].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[1].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[1].main_imageurl}" alt="당신의 일상을 채워나가는 '일상 보관함' 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[1].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[1].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[1].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[1].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[1].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[1].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[2].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[2].main_imageurl}" alt="빛나는 당신의 달, <12달 탄생화 뱃지> 1탄 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[2].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[2].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[2].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[2].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[2].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[2].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[3].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[3].main_imageurl}" alt="남의집에 놀러갈 때 신게 될 양말 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[3].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[3].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[3].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[3].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[3].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[3].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="1" style="float: left; width: 1080px; position: relative; transition-property: transform; left: -1080px; transition-duration: 300ms; transform: translate(1080px, 0px) translateZ(0px);" id="endingproject2">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[4].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[4].main_imageurl}" alt="대학생 독립 영화잡지 '엔딩크레딧' 5호, <공간> 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[4].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[4].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[4].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[4].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[4].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[4].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[5].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[5].main_imageurl}" alt="수영을 배워볼까요? 새수모와 수영첫날일기 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[5].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[5].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[5].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[5].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[5].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[5].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[6].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[6].main_imageurl}" alt="처돌이는 처돌지 않았다고 해요 근황 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[6].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[6].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[6].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[6].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[6].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[6].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${endprojectlist[7].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${endprojectlist[7].main_imageurl}" alt="소속감을 만들기 위한 나라, '영화국' 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${endprojectlist[7].subject}</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${endprojectlist[7].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${endprojectlist[7].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${endprojectlist[7].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${endprojectlist[7].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${endprojectlist[7].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="FrontPage__ProjectsCarousel-sc-1wto2iu-1 ckBjxy">
				<div class="Carousel__CarouselHeader-sc-72guw4-1 DOQRx">
					<span class="Carousel__CarouselTitle-sc-72guw4-2 cnLQNY">
						<a class="Carousel__Link-sc-72guw4-0 kCEWtQ" href="search.do?project=new">신규 추천 프로젝트
							<svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
								<polyline points="9 18 15 12 9 6"></polyline>
							</svg>
						</a>
					</span>
					<div class="Carousel__CarouselButtons-sc-72guw4-3 lmJehc">
						<button class="Button-sc-1x93b2b-0 hioDQR" style="opacity: 0.2;" onclick="newproject_right()" id="newrightBtn">
							<i class="_36JoJH6uhmIKdE1bWDYUlM _1XlDYEGI6NQt_YZkSA5u6N _1QY7TzdLHKX3-BKPDNNYKF"></i>
						</button>
						<button class="Button-sc-1x93b2b-0 hioDQR" style="opacity: 1;" onclick="newproject_left()" id="newleftBtn">
							<i class="WU1ox0-AeDX_zneKjnNMO _1XlDYEGI6NQt_YZkSA5u6N _1QY7TzdLHKX3-BKPDNNYKF"></i>
						</button>
					</div>
				</div>
				<div class="react-swipe-container carousel" style="overflow: hidden; visibility: visible; position: relative;">
					<div style="overflow: hidden; position: relative; width: 5400px;">
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="0" style="float: left; width: 1080px; position: relative; transition-property: transform; left: 0px; transition-duration: 300ms; transform: translate(0px, 0px) translateZ(0px);" id="newproject">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[0].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[0].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[0].subject}</h1> 
											</div> 
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[0].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[0].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[0].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[0].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[0].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[1].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[1].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[1].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[1].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[1].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[1].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[1].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[1].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[2].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[2].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[2].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[2].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[2].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[2].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[2].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[2].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[3].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[3].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[3].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[3].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[3].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[3].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[3].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[3].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="1" style="float: left; width: 1080px; position: relative; transition-property: transform; left: -1080px; transition-duration: 300ms; transform: translate(1080px, 0px) translateZ(0px);" id="newproject2">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[4].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[4].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[4].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[4].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[4].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[4].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[4].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[4].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[5].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[5].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[5].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[5].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[5].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[5].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[5].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[5].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[6].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[6].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[6].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[6].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[6].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[6].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[6].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[6].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do?num=${newprojectlist[7].project_num}">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="file/${newprojectlist[7].main_imageurl}">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">${newprojectlist[7].subject}</h1> 
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">${newprojectlist[7].id}</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="${newprojectlist[7].pop}%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">${newprojectlist[7].deadline}</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">${newprojectlist[7].support_money}원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">${newprojectlist[7].pop}%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		//인기 추천 프로젝트
		function bestproject_right(){
			document.getElementById("bestproject").style.transform = 'translate(0px, 0px) translateZ(0px)';
			document.getElementById("bestproject2").style.transform = 'translate(1080px, 0px) translateZ(0px)';
			document.getElementById("bestrightBtn").style.opacity = '0.2';
			document.getElementById("bestleftBtn").style.opacity = '1';
		}						    	
		function bestproject_left(){
			document.getElementById("bestproject").style.transform = 'translate(-1080px, 0px) translateZ(0px)';
			document.getElementById("bestproject2").style.transform = 'translate(0px, 0px) translateZ(0px)';
			document.getElementById("bestrightBtn").style.opacity = '1';
			document.getElementById("bestleftBtn").style.opacity = '0.2';
		}
		
		//마감 임박 프로젝트	
		function endproject_right(){
			document.getElementById("endingproject").style.transform = 'translate(0px, 0px) translateZ(0px)';
			document.getElementById("endingproject2").style.transform = 'translate(1080px, 0px) translateZ(0px)';
			document.getElementById("endingrightBtn").style.opacity = '0.2';
			document.getElementById("endingleftBtn").style.opacity = '1';
		}
								    	
		function endproject_left(){
			document.getElementById("endingproject").style.transform = 'translate(-1080px, 0px) translateZ(0px)';
			document.getElementById("endingproject2").style.transform = 'translate(0px, 0px) translateZ(0px)';
			document.getElementById("endingrightBtn").style.opacity = '1';
			document.getElementById("endingleftBtn").style.opacity = '0.2';
		}
		
		//신규 추천 프로젝트	
		function newproject_right(){
			document.getElementById("newproject").style.transform = 'translate(0px, 0px) translateZ(0px)';
			document.getElementById("newproject2").style.transform = 'translate(1080px, 0px) translateZ(0px)';
			document.getElementById("newrightBtn").style.opacity = '0.2';
			document.getElementById("newleftBtn").style.opacity = '1';
		}
								    	
		function newproject_left(){
			document.getElementById("newproject").style.transform = 'translate(-1080px, 0px) translateZ(0px)';
			document.getElementById("newproject2").style.transform = 'translate(0px, 0px) translateZ(0px)';
			document.getElementById("newrightBtn").style.opacity = '1';
			document.getElementById("newleftBtn").style.opacity = '0.2';
		}
	</script>
</body>	
</html>