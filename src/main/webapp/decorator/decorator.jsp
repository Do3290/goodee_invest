<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><decorator:title/></title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
      <link rel="dns-prefetch" href="https://tumblbug-assets.imgix.net">
      <link rel="dns-prefetch" href="https://tumblbug-pci2.imgix.net">
      <link rel="dns-prefetch" href="https://tumblbug-psi.imgix.net">
      <link rel="dns-prefetch" href="https://tumblbug-upi.imgix.net">
      <link rel="dns-prefetch" href="https://www.google-analytics.com">
      <link rel="dns-prefetch" href="https://developers.kakao.com">
      <link rel="dns-prefetch" href="https://d2om2e6rfn032x.cloudfront.net">
      <link rel="dns-prefetch" href="https://qysoaxc73e-dsn.algolia.net">
      <link rel="dns-prefetch" href="https://stats.g.doubleclick.net">
      <meta data-react-helmet="true" property="fb:app_id" content="200842993269405"><meta data-react-helmet="true" property="og:site_name" content="tumblbug"><meta data-react-helmet="true" property="og:type" content="website"><meta data-react-helmet="true" property="og:image:width" content="620"><meta data-react-helmet="true" property="og:image:height" content="465"><meta data-react-helmet="true" name="twitter:site" content="tumblbug"><meta data-react-helmet="true" name="twitter:creator" content="tumblbug"><meta data-react-helmet="true" name="twitter:card" content="summary_large_image">
      <link rel="stylesheet" type="text/css" href="https://d2om2e6rfn032x.cloudfront.net/wpa/app.238b217335bbfcd13141eac9107d46c1.css">
      <link href="https://tumblbug-assets.imgix.net/appicon/favicon/favicon-32x32.png" rel="icon" type="image/x-icon">
      
  <link rel="apple-touch-icon" sizes="120x120" href="https://tumblbug-assets.imgix.net/appicon/home-icon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="152x152" href="https://tumblbug-assets.imgix.net/appicon/home-icon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="https://tumblbug-assets.imgix.net/appicon/home-icon/apple-icon-180x180.png">

  <link rel="icon" type="image/png" sizes="48x48" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-48x48.png">
  <link rel="icon" type="image/png" sizes="72x72" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-72x72.png">
  <link rel="icon" type="image/png" sizes="96x96" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-96x96.png">
  <link rel="icon" type="image/png" sizes="144x144" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-144x144.png">
  <link rel="icon" type="image/png" sizes="192x192" href="https://tumblbug-assets.imgix.net/appicon/home-icon/android-icon-192x192.png">
  <meta name="apple-mobile-web-app-title" content="tumblbug">
  <meta name="application-name" content="tumblbug">
<script type="text/javascript">
   	function project_show(){
   		document.getElementById("project").style.display = "block";
   	}
   	
   	function project_hide(){
   		document.getElementById("project").style.display = "none";
   	}
   	
	function mypage_show(){
		document.getElementById("mypage").style.display = "block";
	}
	
	function mypage_hide(){
		document.getElementById("mypage").style.display = "none";
	}
	<!-- Original:  Ronnie T. Moore, Editor -->
	closetime = 1; // 팝업창 닫는 시간 설정하기 :::> 설정은 초단위
	// 값이 0일 경우에는 팝업창을 닫지 않습니다.
	// 1이상 숫자를 지정하면 그시간에 팝업창을 닫아 줍니다.
	function Start(URL, WIDTH, HEIGHT) {
		windowprops = "left=10,top=10,width=" + WIDTH + ",height=" + HEIGHT;
		preview = window.open(URL, "preview", windowprops);
			if (closetime){
				
				setTimeout("preview.close();location.href='../user/logout.do;'", closetime*1000)
				
			}
		}
		
	function javascript(){
		url='https://accounts.kakao.com/logout?continue=https://accounts.kakao.com/weblogin/account';
		width=100; 
		height = 100;
		delay = 1;
		timer = setTimeout("Start(url, width, height)", delay*1000);
		
		
	}
	function javascript2(){
		url='https://nid.naver.com/nidlogin.logout?returl=https://www.naver.com/';
		width=100;
		height = 100;
		delay = 1;
		timer = setTimeout("Start(url, width, height)", delay*1000);
	}

</script>
<script type="text/javascript" src="${path}/ckeditor/ckeditor.js"></script>
<script type="text/javascript" 
  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="${path}/css/main2.css">   

<decorator:head/>
</head>
<body style="overflow: auto;">
	<div class="SiteHeader__SiteHeaderWrapper-q8dvod-0 iSuAdB" data-reactid="8">
		<div class="Header-ou4e17-0 cwcqcZ" data-reactid="9">
			<div class="Container-gci8y7-0 MskhC" data-reactid="10">
				<div class="SiteHeader__SiteHeaderMenu-q8dvod-1 fMekoE" data-reactid="11">
					<div class="SiteHeader__LeftMenu-q8dvod-2 fbsOED" data-reactid="12">
						<button class="SiteHeader__LinkButton-q8dvod-7 hLwNNy" data-reactid="13" onclick="project_show()">
							<i class="_3ZgG-OSv0XE3y-h3oPaDsl _1QY7TzdLHKX3-BKPDNNYKF" data-reactid="14"></i>
							<span class="SiteHeader__ItemLabel-q8dvod-8 hWygls" data-reactid="15">프로젝트 둘러보기</span>
						</button>
						<span class="SiteHeader__ForMobile-q8dvod-9 ihCbfB" data-reactid="16">
							<c:if test= "${loginUser.id  == null}" >
				                <a class="SiteHeader__LinkItem-q8dvod-6 dALTNz" href="../page/main.do" data-reactid="17">
				                	<span class="SiteHeader__ItemLabel-q8dvod-8 hWygls" data-reactid="18">프로젝트 올리기</span>
				                </a>
                 			</c:if>
			                <c:if test= "${loginUser.id  != null}" >
			                   <a class="SiteHeader__LinkItem-q8dvod-6 dALTNz" href="../page/agree.do" data-reactid="17">
			                      <span class="SiteHeader__ItemLabel-q8dvod-8 hWygls" data-reactid="18">프로젝트 올리기</span>
			                   </a>
			                </c:if>
						</span>
					</div>
					<div class="SiteHeader__CenterMenu-q8dvod-3 hbKGuE" data-reactid="19">
						<a class="SiteHeader__ButtonLink-q8dvod-5 efdMbN" href="../page/main.do" data-reactid="20">INVEST</a>
					</div>
					<c:if test= "${loginUser.id  == null}" >
					<div class="SiteHeader__RightMenu-q8dvod-4 cLNJqs" data-reactid="33">
						<a class="q8dvod-5-SiteHeader__ButtonLink-ktApHV kGropT"  href="../user/login.do" data-reactid="35">
							<span class="SiteHeader__ItemLabel-q8dvod-8 hWygls" data-reactid="36">로그인 / 회원가입</span>
							<span class="SiteHeader__ProfileImageWrapper-q8dvod-10 hcHNSW" data-reactid="37">
								<span class="ProfileImg-sc-1vio56c-0 beGvzJ" data-reactid="38">
								
								</span>
							</span>
						</a>
					</div>
					</c:if>
					<c:if test= "${loginUser.id  != null}" >
					<div class="SiteHeader__RightMenu-q8dvod-4 cLNJqs" data-reactid="33">
						<a class="q8dvod-5-SiteHeader__ButtonLink-ktApHV kGropT" onclick="mypage_show()">
							<span class="SiteHeader__ItemLabel-q8dvod-8 hWygls" data-reactid="36">
							<c:if test = "${empty dbuser.nic }">
							<p>닉네임 설정이 필요합니다.</p>
							</c:if>
							<c:if test = "${!empty dbuser.nic }">
							${dbuser.nic }
							</c:if>
							</span>
							<span class="SiteHeader__ProfileImageWrapper-q8dvod-10 hcHNSW" data-reactid="37">
								<c:if test="${empty loginUser.pic || loginUser.pic==('https://ssl.pstatic.net/static/pwe/address/img_profile.png')}">
								<img src="../img/null_profile.png" style="width:32px; height:40px;">
								</c:if>
								<c:if test="${!empty loginUser.pic && loginUser.pic!=('https://ssl.pstatic.net/static/pwe/address/img_profile.png')}">	
								<img src = "${loginUser.pic }" style="width:32px; height:40px; border-radius:70%">
								</c:if>
							</span>
						</a>
					</div>
					</c:if>
					
					<div id="project" style="display:none;">
						<div class="FullscreenModal__Modal-sc-7wosl3-0 dqYnGy">
							<div class="Header-ou4e17-0 wdjuV">
								<div class="Container-gci8y7-0 GPraD">
									<div class="FullscreenModal__ModalHeader-sc-7wosl3-1 fmhNql">
										<div class="FullscreenModal__ActionMenu-sc-7wosl3-2 fvjTzb">
											<div class="FullscreenModal__CloseButton-sc-7wosl3-6 dmMpPz">
												<button class="Button-sc-1x93b2b-0 jLGirx" onclick="project_hide()">
													<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>
												</button>
											</div>
										</div>
										<div class="FullscreenModal__CenterMenu-sc-7wosl3-3 knaFzy">
											<div class="FullscreenModal__ModalTitle-sc-7wosl3-4 gBkkry">프로젝트 둘러보기</div>
										</div>
										<div class="FullscreenModal__ActionMenu-sc-7wosl3-2 fvjTzb"></div>
									</div>
								</div>
							</div>
							<div class="FullscreenModal__ModalBody-sc-7wosl3-5 jZcqcl">
								<div class="Container-gci8y7-0 GPraD">
									<div class="Discover__Search-nj6hnw-1 iRqcUq">
										<div class="Discover__DiscoverMenuTitle-nj6hnw-0 cXVSSP">검색</div>
										<div class="SearchWidget__SerchInputWidget-sc-1quikp3-0 cOihOp">
											<form action="search.do" method="post">
												<input type="search" class="SearchWidget__Input-sc-1quikp3-1 fpAvJE" placeholder="프로젝트를 검색해주세요" name="search">
												<input type="submit" style="display: none;"><button class="Button-sc-1x93b2b-0 laSBHo">검색하기</button>
											</form>
										</div>
									</div>
								</div>
								<div class="Divider-sc-17hnup0-0 eUqLBU"></div>
								<div class="Container-gci8y7-0 GPraD">
									<div class="Divider-sc-17hnup0-0 hiPjSF"></div>
									<div class="MenuItem-sc-16gdmz1-0 qlsxv">
										<a href="search.do?project=all">
											<span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">모든 프로젝트</span>
										</a>
									</div>
									<div class="MenuItem-sc-16gdmz1-0 qlsxv">
										<a href="search.do?project=pop">
											<span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">인기 추천 프로젝트</span>
										</a>
									</div>
									<div class="MenuItem-sc-16gdmz1-0 qlsxv">
										<a href="search.do?project=end">
											<span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">마감 임박 프로젝트</span>
										</a>
									</div>
									<div class="MenuItem-sc-16gdmz1-0 qlsxv">
										<a href="search.do?project=new">
											<span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">신규 추천 프로젝트</span>
										</a>
									</div>
									<div class="Divider-sc-17hnup0-0 UsVqw"></div>
									<div>
										<div class="Discover__DiscoverMenuTitle-nj6hnw-0 cXVSSP">카테고리</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=게임">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs fqUNKa">게임</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=공예">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs gJlLvU">공예</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=영화·비디오">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs jHNvwL">영화·비디오</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=패션">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs hpAJSZ">패션</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=만화">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs ZHivy">만화</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=디자인">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs glgpYK">디자인</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=음악">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs fqUNKa">음악</span>
												</a>
											</div>
										</div>
										<div class="Discover__TagCollection-nj6hnw-2 cFWYCw">
											<div class="MenuItem-sc-16gdmz1-0 qlsxv">
												<a href="search.do?category=테크놀로지">
													<span class="sc-16gdmz1-1-MenuItem__MenuItemTitle-pPnRs gJlLvU">테크놀로지</span>
												</a>
											</div>
										</div>
										<div class="Divider-sc-17hnup0-0 UsVqw"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="FullscreenModal__Modal-sc-7wosl3-0 dqYnGy" id="mypage" style="display: none;">
	<div class="Header-ou4e17-0 wdjuV"><div class="Container-gci8y7-0 GPraD"><div class="FullscreenModal__ModalHeader-sc-7wosl3-1 fmhNql"><div class="FullscreenModal__ActionMenu-sc-7wosl3-2 fvjTzb"></div>
	<div class="FullscreenModal__CenterMenu-sc-7wosl3-3 knaFzy"><div class="FullscreenModal__ModalTitle-sc-7wosl3-4 gBkkry">내 페이지</div></div><div class="FullscreenModal__ActionMenu-sc-7wosl3-2 fvjTzb">
	<div class="FullscreenModal__CloseButton-sc-7wosl3-6 bYTFQO" style=text-align:right><button class="Button-sc-1x93b2b-0 jLGirx" onclick="mypage_hide()"><i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i></button>
	</div></div></div></div></div>
	<div class="FullscreenModal__ModalBody-sc-7wosl3-5 jZcqcl"><div class="Container-gci8y7-0 GPraD"><div class="Divider-sc-17hnup0-0 cJgDpP"></div>
	<a href="../user/support.do?id=${loginUser.id }"><div class="MenuItem-sc-16gdmz1-0 qlsxv"><span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">내 후원현황</span></div></a>
	<a href="../user/project.do?id=${loginUser.id }"><div class="MenuItem-sc-16gdmz1-0 qlsxv"><span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">내가 만든 프로젝트</span></div></a><div class="Divider-sc-17hnup0-0 cJgDpP"></div>
	<a href="../user/updateview.do?id=${loginUser.id }"><div class="MenuItem-sc-16gdmz1-0 qlsxv"><span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">프로필 수정</span></div></a>
	<a href="../user/infoview.do?id=${loginUser.id }"><div class="MenuItem-sc-16gdmz1-0 qlsxv"><span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">내 프로필 보러가기</span></div></a>
	<c:if test="${loginUser.name eq '이도영' }">
	<a href="../admin/dash.do"><div class="MenuItem-sc-16gdmz1-0 qlsxv"><span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">관리자 페이지 이동</span></div></a>
	</c:if>
	<a href="../user/message.do?id=${loginUser.name }"><div class="MenuItem-sc-16gdmz1-0 qlsxv"><span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">내 메세지</span></div></a>
	
	<c:if test = "${login eq 'kakao'}">
	
	<a href="#" onclick="javascript()">
	<div class="MenuItem-sc-16gdmz1-0 qlsxv">
	<span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">로그아웃</span>
	</div></a>
	
	</c:if>
	<c:if test = "${login eq 'naver'}">
	<a href="#" onclick="javascript2()">
	<div class="MenuItem-sc-16gdmz1-0 qlsxv">
	<span class="MenuItem__MenuItemTitle-sc-16gdmz1-1 ccLTPG">로그아웃</span>
	</div></a>
	
	</c:if>
	</div></div></div>
	
	
<decorator:body />
<div class="_2nkoQovCMNDdKtTjNi5W_x SiteFooter__FooterWrapper-sc-160ijjw-2 kpoBQb" data-reactid="405">
	<div class="footer-grid _13KHfN73YmQgsYHxXvuh_J _1V4AsGFqT8un0KZo8QWVRL kKeFxbI9p0TnKvSk7DzSR _1gTQggGV_yO4HJ6p7pil3E _1UmvYpZQFDG3yh_HWxQaF9 SiteFooter__FooterColumnWrapper-sc-160ijjw-3 gUfPmS" data-reactid="406">
		<div class="footer-column grid-three _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ SiteFooter__FooterSubColumn-sc-160ijjw-4 ilwNes" data-reactid="407"></div>
		<div class="footer-column grid-four _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ SiteFooter__FooterSubColumn-sc-160ijjw-4 erxKKA" data-reactid="417"></div>
		<div class="footer-column grid-nine _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ _2h2Lxt21YmZS8bCMfCUMnE SiteFooter__FooterSubColumn-sc-160ijjw-4 cDdnng" data-reactid="425">
			<div data-reactid="426">
				<a class="_3TJ2LNmiyFnXVggSgiKX5Q" href="${path}/help/terms.do" data-reactid="78">이용약관</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="_3TJ2LNmiyFnXVggSgiKX5Q" href="${path}/help/privacy.do" data-reactid="78">개인정보 처리방침</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="_3TJ2LNmiyFnXVggSgiKX5Q" href="${path}/help/commu.do" data-reactid="78">커뮤니티 정책</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a class="_3TJ2LNmiyFnXVggSgiKX5Q" href="${path}/help/help.do" data-reactid="78">헬프 센터</a>
			</div>
		</div><div class="footer-column grid-sixteen _2yIPuXkUmexMNa4oYh94d2 _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ" data-reactid="453"><span data-reactid="454">텀블벅은 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.</span></div><div class="footer-column grid-sixteen  _2AKJF7ih68n2TcW3TIF8-t _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ" data-reactid="455"><span data-reactid="456">텀블벅(주) | 대표 염재승 105-87-52823 | 서울시 중구 청계천로 100, 시그니쳐타워 9층 (수표동) | 통신판매업 2019-3010165-30-2-02129 | 대표전화 02-6080-0760</span><span class="_1NwnhTlynaDwYqlZ_SKgmG" data-reactid="457"><span role="img" aria-labelledby="copyright emoji" data-reactid="458">©</span><!-- react-text: 459 --> <!-- /react-text --><!-- react-text: 460 -->2020<!-- /react-text --><!-- react-text: 461 --> Tumblbug Inc.<!-- /react-text --></span></div></div></div>


</body>
</html>