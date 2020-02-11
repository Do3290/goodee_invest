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
<title></title>
<style>
.select12 {
	border: 1px solid #999;
	font-family: inherit;
	border-radius: 0px;
}
</style>     
</head>
<body>
	<div id="react-view">
		<div data-reactroot="" data-reactid="1">
			<div data-reactid="7">
				<div data-reactid="39">
					<div class="Discover__DiscoverWrapper-sc-16itaa3-0 hElyGv">
						<form action="search.do" method="post" name="searchform">
						<div class="Discover__FilterWrapper-a92tdn-0 cSMhSq">
							<noscript></noscript>
							<div class="gci8y7-0-Container-gZqETv bCibVA">
								<div class="Discover__FilterLayout-a92tdn-1 heNDmr">
									<div class="Discover__FilterOptions-a92tdn-2 hJCRul">
										<div class="wrap">										
											<span class="Button__ButtonWrapper-sc-10w4uz1-0 jlEoyt" style="margin-right: 1em">
												<select class="select12" style="border: none;" name="category">
													<option value="" selected disabled hidden>카테고리</option>
													<option>게임</option>
													<option>공예</option>
													<option>영화·비디오</option>
													<option>패션</option>
													<option>만화</option>
													<option>디자인</option>
													<option>음악</option>
													<option>테크놀로지</option>
												</select>
											</span>
											<span class="Button__ButtonWrapper-sc-10w4uz1-0 jlEoyt" style="margin-right: 1em">
												<select class="select12" style="border: none;" name="state">
													<option value="" selected disabled hidden>상태</option>
													<option value="전체">전체 프로젝트</option>
													<option value="진행">진행중인 프로젝트</option>
													<option value="마감">마감된 프로젝트</option>
												</select>
											</span>
											<span class="Button__ButtonWrapper-sc-10w4uz1-0 jlEoyt" style="margin-right: 1em">
												<select class="select12" style="border: none;" name="rate">
													<option value="" selected disabled hidden>달성률</option>
													<option value="1">50%미만</option>
													<option value="2">50%이상 100%미만</option>
													<option value="3">100%이상</option>
												</select>
											</span>												
										</div>
										<div class="Discover__FilterReset-a92tdn-3 gYQZkv">
											<span class="Button__ButtonWrapper-sc-10w4uz1-0 jSzpGp">
												<button class="Button__StyledButton-sc-10w4uz1-1 jSsJhI">
													<span class="Button__ReloadIcon-sc-10w4uz1-3 jvLekv">
														<svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg" style="color: rgb(85, 85, 85); stroke-width: 1; display: block; width: 100%; height: 100%;">
															<polyline points="1 4 1 10 7 10"></polyline>
															<polyline points="23 20 23 14 17 14"></polyline>
															<path d="M20.49 9A9 9 0 0 0 5.64 5.64L1 10m22 4l-4.64 4.36A9 9 0 0 1 3.51 15"></path>
														</svg>
													</span>
													<span class="title-wrapper">검색</span>
													<span class="icon-down Button__ActionIcon-sc-10w4uz1-4 bQsCpx">
														<svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg" style="color: rgb(103, 103, 103); stroke-width: 2; display: block; width: 100%; height: 100%;">
															<polyline points="6 9 12 15 18 9"></polyline>
														</svg>
													</span>
													<span class="icon-up Button__ActionIcon-sc-10w4uz1-4 bQsCpx">
														<svg stroke="currentColor" fill="none" stroke-width="2" viewBox="0 0 24 24" stroke-linecap="round" stroke-linejoin="round" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg" style="color: rgb(103, 103, 103); stroke-width: 2; display: block; width: 100%; height: 100%;">
															<polyline points="18 15 12 9 6 15"></polyline>
														</svg>
													</span>
												</button>
											</span>
											</div>
										</div>
										<div class="Discover__SortOption-a92tdn-4 dxvtbd">
											<div class="ComboBox__ComboBoxWrapper-sc-16bv7br-0 cBpIYm"></div>
										</div>
									</div>
								</div>
							</div>
							</form>
							<div class="gci8y7-0-Container-gZqETv kvHMIb">
								<div class="InfinityList__ResultWrapper-sc-19jay7c-0 dLVDnF">
									<div class="InfinityList__ResultCounter-sc-19jay7c-1 cuKoyt">
										<span>${projectcount}</span>개의 프로젝트가 있습니다.
									</div>
									<div class="InfinityList__ListWrapper-sc-19jay7c-2 cvffqg">
										<c:forEach var="project" items="${projectlist}">
											<div class="InfinityList__ProjectCardWrapper-sc-19jay7c-3 crIvqw">
												<div>
													<span style="font-size: 0px;"></span>
													<a href="info.do?num=${project.project_num}">
														<div class="_13KHfN73YmQgsYHxXvuh_J _2nZxogWCtwxgZvigECqiKs yx45-aQ3xTwP4lNZQ2qQs _18TDror949wcy2NyVIqpHo _3nQ7klSF79Kkk8HQan-5pJ">
															<div class="_2p0CnNpLjoqQAIkF5ovo8b">
																<img src="file/${project.main_imageurl}" class="c2SH1AwojLpg9NWhpH0fR" alt="서울의 대표 건축물을 담은, 서울 에디션 문구 세트" style="width:100%; height: 100%">
															</div>
															<div class="_3ZgG-OSv0XE3y-h3oPaDsl" style="padding: 1rem; height: 86px;">
																<div class="P8euTwfxXCnb1PWn02ypS">
																	<div class="_3pHwEkSiYqWk69Gc95VG0O">
																		<div style="overflow: hidden; text-overflow: ellipsis; -webkit-box-orient: vertical; display: -webkit-box; -webkit-line-clamp: 2;">${project.summary}</div>
																	</div>
																	<div class="_30kvww8__aiRweo3To4YZ4">${project.id}</div>
																</div>
															</div>
															<div class="_13KHfN73YmQgsYHxXvuh_J _28LKn930rfRFkZT8rldrUE IHUALIalgwgMpH2DEQooZ _1Wxx18kEfVPxJvla-FdZGF _3056gf2uyWZaeakWdTczZS" data-percent="74">
																<div class="_2L0-7hWDrYoa3rVDPaZC_T" style="width: <c:if test="${project.pop > 100}">100%</c:if><c:if test="${project.pop < 100}">${project.pop}%</c:if>; min-width: 0%; background: rgb(250, 100, 98); transition-duration: 200ms; height: 2px;">
																	<div class="_1Wxx18kEfVPxJvla-FdZGF"></div>
																</div>
															</div>
															<div class="_3ZgG-OSv0XE3y-h3oPaDsl _3Uiac4r6jvAIQ1ITsxXgpB">
																<span>
																	<span>
																		<i class="_2CeNIUhLMEIh6Reaatfs8t _1DLNFgQRrQNEosKFB0zOK5 _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
																		<span class="_2l-pvZM-M9OyRWZ0HGJJld">
																			<span>
																				<b>
																					<c:if test="${project.deadline < 0}">마감</c:if>
																					<c:if test="${project.deadline == 0}">당일마감</c:if>
																					<c:if test="${project.deadline > 0}">${project.deadline}일&nbsp;남음</c:if>
																				</b>
																			</span>
																		</span>
																	</span>
																</span>
																<span class="WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- oAeG34mYkuDyUTybhBMrQ _1gRTx-Db6Vw-8uas9MaV1P">
																	<span class="_2hgLWy6_7M_DWxt-VZpx04">
																		<b>${project.support_money}</b>원</span>&nbsp;
																	<span class="_2xHAueuwo9B83GpdUpFHnu">${project.pop}%</span>
																</span>
															</div>
														</div>
													</a>
													<span style="font-size: 0px;"></span>
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

</body>
</html>