<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			<li></li>
			<li></li>
			<li></li>
			<li></li>
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
						<a class="Carousel__Link-sc-72guw4-0 kCEWtQ" href="/discover?sort=popular&amp;editorPick=1&amp;ongoing=onGoing">인기 추천 프로젝트
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
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/740dacc152c154221b8205d4ba9ba977985f4aa0/7f26e73a37c2b529f14d1206f7173b2143778900/e4c4a210-823f-475b-b2fb-01f784c8c8b3.jpeg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=a94f0a56270db1ab7371bc32c0653e68" alt="카드캡터 체리 클리어카드편 굿즈 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">카드캡터 체리 클리어카드편 굿즈</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">아르누보</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect><rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">30</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">10,002,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">100%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="../page/info.do">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/59e5c993461f849dfffc090cac99ffce50038bac/f8af948e90cbb7d5a354b996269370247b3a0e68/49991651-f75c-4bf2-b007-0de751a8e328.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=7a98675f68f6a33f29d693bbdffa370a" alt="한국의 판타지 명작 <하얀 늑대들> 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">한국의 판타지 명작 &lt;하얀 늑대들&gt;</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">제우미디어</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">25</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">5,046,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">100%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/iamstillokay?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/인기추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/b4572ab4454762ded86a52b210ac79878e26a0da/caa649498f7d79142656da22b98357b2c71ae139/29f445526f68ea853c7260bb5fb10e134365014d/39f2c427-60e2-41a8-858c-4693589d32d6.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=324bc46b6b74020dfbbfe03d6b9b6294" alt="[eBook] 성희롱 고발 직장인의 5년 실패기 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">[eBook] 성희롱 고발 직장인의 5년 실패기</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">실비아</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">52</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">2,921,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">292%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/helterskelter?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/인기추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/b4572ab4454762ded86a52b210ac79878e26a0da/3ade3b098b2ff9e757bae3e290e4c4497f0c40f7/b8608aa7ebd610e47111d78a1a9e2eb859a97bc8/318e8819-38b3-46da-a31f-1a37c445226c.jpeg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=f4dc899887350051a68e2d3ec22a0680" alt="오카자키 교코의 『헬터 스켈터』(2003) 출간 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">오카자키 교코의 『헬터 스켈터』(2003) 출간</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">goat</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">31</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">9,627,200원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">160%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="1" style="float: left; width: 1080px; position: relative; transition-property: transform; left: -1080px; transition-duration: 300ms; transform: translate(1080px, 0px) translateZ(0px);" id="bestproject2">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/sticky?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/인기추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/7a5952f3d9162fe34bfe84c8f3c10d573ed69b71/d936c03fd6cec1aff14f83093fb5425c398efa5b/d70af64a-caad-4a06-b935-7144ae1bcc59.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=1e0ffd8ab4e33f5e5ecc999463e6a4ee" alt="스티커 굿즈 제작, 꼭 체크해야 하는 3가지 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">스티커 굿즈 제작, 꼭 체크해야 하는 3가지</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">SDBX</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">22</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">23,125,500원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">1541%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/monsterofwest?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/인기추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/283b06b41dd353ee03c78335601e30fd978302a0/6c445a87ce17ab65dad7291f724cf66fc77d49d7/958963ee-ec66-479a-ba42-12446feb3ff9.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=6652c03fbdfd0479d986e7df322eba98" alt="환상의 동물들, 다 모여! <세계괴물백과> - 서양편 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">환상의 동물들, 다 모여! &lt;세계괴물백과&gt; - 서양편</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">하쿠나마타타 출판사</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">48</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">12,054,600원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">401%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/steak2?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/인기추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/b4572ab4454762ded86a52b210ac79878e26a0da/c23da715695415990bdc3cecaaedc661b6cb1e9b/207471c9de6e4825ef20e6e5b9ae4e6b430af51e/7e87b766-bc3b-415f-bb46-382d0bb354d3.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=916e830b612a5ba6347ac603d389fde5" alt="육질은 부드럽게, 풍미는 진하게! 와즈나보이의 숙성스테이크 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">육질은 부드럽게, 풍미는 진하게! 와즈나보이의 숙성스테이크</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">와즈나보이 Huasna Boy</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">9</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">4,897,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">489%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/knightrun?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/인기추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/690c9f262a25131d07655e5589af183e6e51bf02/a275dfa1279aa9e9dbce881486f2fd2bbfc207d7/4aa3005d51a923da57adf07442b15835188374ed/3f8ea2ba-4444-4c33-9477-96edd85ed984.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=1c9f3cf6fa9766fe8786587e73b9bc33" alt="나이트런 10주년 헌정 모바일 게임 &quot;나이트런:레콘키스타&quot; 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">나이트런 10주년 헌정 모바일 게임 "나이트런:레콘키스타"</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">AKA STUDIO</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">32</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">141,537,500원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">707%</span>
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
						<a class="Carousel__Link-sc-72guw4-0 kCEWtQ" href="/discover?minAchieveRate=75&amp;maxAchieveRate=99&amp;sort=endedAt&amp;editorPick=1&amp;ongoing=onGoing">마감 임박 프로젝트
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
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/ckasrai?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/690c9f262a25131d07655e5589af183e6e51bf02/dd3c539d0cbd6973045c58e90f76f0961c6dc928/d903ec42464bd15e0ee80bda8e86968b5d6b242b/99ca4b48-df40-43fa-8bd3-552ce075e8ca.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=2da80ea5037a36cf428ad5cc32bfb9ce" alt="거부할 수 없는 우리의 전통 디저트. 스토리텔링 컬러링 북 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">거부할 수 없는 우리의 전통 디저트. 스토리텔링 컬러링 북</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">아스라이</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="92%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">3</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">926,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">92%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/herenthere2019?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/827e5110790b5b575f8c25a168be62f3a18b6691/89aad0dcd56ffd09e679e679f281ad18638379cf/c49913e6-cf63-419a-9da2-d8a927ff7a3e.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=730be8d1f334f3e0357ec314f1f2db67" alt="당신의 일상을 채워나가는 '일상 보관함' 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">당신의 일상을 채워나가는 '일상 보관함'</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">히얼앤데얼</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="88%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">4</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">1,762,500원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">88%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/raonbirthflower01?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/690c9f262a25131d07655e5589af183e6e51bf02/9baa54f02e034bfff805bc3ece0c9347c3d9789d/ef54b8678bc89647314338fd7074598d95e82dea/4bfebd03-d30a-4ed2-8396-cd9b1b826ba5.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=82772ce0a4a0b50084ec4a983ebaff58" alt="빛나는 당신의 달, <12달 탄생화 뱃지> 1탄 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">빛나는 당신의 달, &lt;12달 탄생화 뱃지&gt; 1탄</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">라온(RaOn)</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="96%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">7</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">3,368,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">96%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/naamezip_yangmal?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/6e9a642e6e4d5d647835e62e1f0158aec00ba4ff/e75c0e18b52b798f4f3b36024ff955df585d3947/d9943731eae58cec45b7a2b10e309853920a50e6/de698591-0e09-47c9-9457-947a03b27834.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=48426f1be08730e4760185717a0416de" alt="남의집에 놀러갈 때 신게 될 양말 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">남의집에 놀러갈 때 신게 될 양말</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">남의집</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="86%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">8</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">865,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">86%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="1" style="float: left; width: 1080px; position: relative; transition-property: transform; left: -1080px; transition-duration: 300ms; transform: translate(1080px, 0px) translateZ(0px);" id="endingproject2">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/endingcredit_5?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/59e4705fa23235cff63a8ffd4eced13035809d9a/f730bd12dcaa374a19d198bfb8dc1ddbed5db820/ea86813cb6304c0524586cf4c6cbec44a3827778/f1ea84a0-888b-4243-a54a-2fb6da6cc1c5.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=4c41c9b62fa94660c2ef687b27ecda01" alt="대학생 독립 영화잡지 '엔딩크레딧' 5호, <공간> 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">대학생 독립 영화잡지 '엔딩크레딧' 5호, &lt;공간&gt;</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">엔딩크레딧</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="82%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">10</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">989,500원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">82%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/makewaves?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/1e6433d024f300eddac76ac30a14a3b2d24fce3d/9d2d5ae582341893782aaf3ea08b2646f89171e1/50a49b2c-5dad-49d4-956c-3c6ec2bdf1ba.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=170ad7d3d3a349a0bb46cd92208e6ada" alt="수영을 배워볼까요? 새수모와 수영첫날일기 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">수영을 배워볼까요? 새수모와 수영첫날일기</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">풍파메미</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="75%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">19</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">488,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">75%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/choedolee?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/690c9f262a25131d07655e5589af183e6e51bf02/44a0b5b2e8a3460b501b9adbf5ccfb5d2a6eef21/c64ccb8a2bb25bab9af51e6408e868fdaaf8bfc2/ba4de3e2-95a5-45ad-b6f5-4f3472d3f6e9.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=29d6a5a29e141d4960cfc58438d4cae7" alt="처돌이는 처돌지 않았다고 해요 근황 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">처돌이는 처돌지 않았다고 해요 근황</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">(주)코글플래닛</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="84%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">25</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">8,476,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">84%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/therepublicofyoung?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/성공임박">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/690c9f262a25131d07655e5589af183e6e51bf02/f5c730de92eece700a116495082d993fa7ac1c33/e7380dc9cdf6869cba0c1a6a14f06ae8fa34bdc1/57c07aa6-d1af-4aba-b8ae-aee1e91a29d9.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=fd49e8a18c89f633a640446c16d6987d" alt="소속감을 만들기 위한 나라, '영화국' 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">소속감을 만들기 위한 나라, '영화국'</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">노지원 / NCK</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="95%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">31</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">285,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">95%</span>
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
						<a class="Carousel__Link-sc-72guw4-0 kCEWtQ" href="/discover?sort=publishedAt&amp;editorPick=1&amp;ongoing=onGoing">신규 추천 프로젝트
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
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/1312658?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/ad9c41d87d49ed417795ae86cca8297cc938c844/949efd794c293368af7440a55d3660a38331a3b2/313f2796-d990-4c63-badd-1a910edcc21a.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=cd537790f9944f9a5346565f7ab3142b" alt="진짜 비니가 나타났다! 비니+머프를 동시에[투인원멀티프] 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">진짜 비니가 나타났다! 비니+머프를 동시에[투인원멀티프]</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">(주)하이츠</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="0%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">11</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">0원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">0%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/whitewolves?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/59e5c993461f849dfffc090cac99ffce50038bac/f8af948e90cbb7d5a354b996269370247b3a0e68/49991651-f75c-4bf2-b007-0de751a8e328.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=7a98675f68f6a33f29d693bbdffa370a" alt="한국의 판타지 명작 <하얀 늑대들> 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">한국의 판타지 명작 &lt;하얀 늑대들&gt;</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">제우미디어</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">25</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">5,046,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">100%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/cardcaptor?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/740dacc152c154221b8205d4ba9ba977985f4aa0/7f26e73a37c2b529f14d1206f7173b2143778900/e4c4a210-823f-475b-b2fb-01f784c8c8b3.jpeg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=a94f0a56270db1ab7371bc32c0653e68" alt="카드캡터 체리 클리어카드편 굿즈 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">카드캡터 체리 클리어카드편 굿즈</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">아르누보</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">30</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">10,002,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">100%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/pxk_34?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/44632b0d7a905326c04de56c570ab922dfcae76e/86399e0deef22c27d1337048ad88e88f792c2bbb/74385d6d-6c6b-488b-942c-4e03b3dab4d6.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=ccefb56bd155370e439737374ddb1385" alt="레진코믹스 웹툰 <박배우X김남팬> 단행본 3~4권 제작 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">레진코믹스 웹툰 &lt;박배우X김남팬&gt; 단행본 3~4권 제작</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">주식회사 영컴</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="20%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">33</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">1,235,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">20%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
						</div>
						<div class="Carousel__CarouselContents-sc-72guw4-4 ibmRNI" data-index="1" style="float: left; width: 1080px; position: relative; transition-property: transform; left: -1080px; transition-duration: 300ms; transform: translate(1080px, 0px) translateZ(0px);" id="newproject2">
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/fromjobseeker_tojobseeker?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/665b4a21adedd7fb5f3a2f61c4e2dc944b85d08a/9a69d767188154bf3dad5185971ca7cd434e4876/5e113807-58bd-4329-9fd4-b81851ae1bc1.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=d7533805d7cd04d7e7a99627539d70ba" alt="취준생이었던 내가, 취준생들에게 선물하는&quot;일러스트 굿즈&quot; 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">취준생이었던 내가, 취준생들에게 선물하는"일러스트 굿즈"</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">취뽀한 헬레니</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="48%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">40</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">242,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">48%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/ari?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/b4572ab4454762ded86a52b210ac79878e26a0da/7f61e900bd55545ab02dc7fab282d554986ec578/690e97bf2ccf2a73975afa3f6cdac2b0e230faf2/7df49797-c5b8-46f6-a86c-2d6d2c9db52b.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=b5fca7a1a548c131312580c81089858d" alt="오카리니스트 아리의 첫 정규앨범 발매 및 쇼케이스 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">오카리니스트 아리의 첫 정규앨범 발매 및 쇼케이스</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">아리</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="19%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">28</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">990,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">19%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/iamstillokay?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/b4572ab4454762ded86a52b210ac79878e26a0da/caa649498f7d79142656da22b98357b2c71ae139/29f445526f68ea853c7260bb5fb10e134365014d/39f2c427-60e2-41a8-858c-4693589d32d6.png?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=324bc46b6b74020dfbbfe03d6b9b6294" alt="[eBook] 성희롱 고발 직장인의 5년 실패기 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">[eBook] 성희롱 고발 직장인의 5년 실패기</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">실비아</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">52</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">2,921,000워</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">292%</span>
											</div>
										</div>
									</div>
								</a>
							</div>
							<div class="Carousel__Column-sc-72guw4-5 fpWFDE">
								<a class="ProjectItem__ProjectItemCard-j9emyg-0 ihivvr" href="/ebook_33?utm_source=tumblbug&amp;utm_medium=internal&amp;utm_campaign=텀블벅/메인/신규추천">
									<img class="ProjectItem__ProjectCoverimage-j9emyg-6 eaBarM" src="https://tumblbug-pci.imgix.net/3c197779bcc30fc6af04b68d94781af419fc097c/a47ab0e17f5d63b7172219d559a1c2e36c81f72b/220be8b2259c1de1ac748bcaceec3066f0548199/e9463980-4b3f-44da-a925-4e4cbf975375.jpg?ixlib=rb-1.1.0&amp;w=620&amp;h=465&amp;auto=format%2Ccompress&amp;lossless=true&amp;fit=crop&amp;s=e130f45ea67952dd5911dc7b4f968991" alt="내가 꿈꾸던 '전자책' 만들기 이미지">
									<div class="ProjectItem__ProjectTextWrapper-j9emyg-1 idMFxu">
										<div class="ProjectItem__FundingTitle-j9emyg-9 bPQPya">
											<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">
												<h1 class="ProjectItem__ProjectTitle-j9emyg-2 fYikfb">내가 꿈꾸던 '전자책' 만들기</h1>
											</div>
											<p class="ProjectItem__CreatorName-j9emyg-3 kwVXIK">유진</p>
										</div>
										<svg class="ProjectItem__PercentageLine-j9emyg-5 uGYjB" xmlns="http://www.w3.org/2000/svg">
											<rect x="0" y="0" fill="#efefef" height="2" width="100%"></rect>
											<rect x="0" y="0" height="2" width="100%" fill="#fa6462"></rect>
										</svg>
										<div class="ProjectItem__FundingInfo-j9emyg-7 eGfkCC">
											<span style="font-size: 0.8rem;">
												<span>
													<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
													<span style="font-weight: 700;">25</span>일&nbsp;남음
												</span>
											</span>
											<div>
												<span class="ProjectItem__FundingMoney-j9emyg-8 eFNjaj">1,061,000원</span>
												<span class="ProjectItem__FundingRate-j9emyg-4 ldNMzx">321%</span>
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