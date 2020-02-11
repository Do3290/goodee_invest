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
<title>${loginUser.id}</title>
</head>
<body>
<form:form modelAttribute="project" action="write.do" enctype="multipart/form-data" name="f">
<input type="hidden" name="id" value="${loginUser.id}"/>
	<div>
      	<div>
      		<div>
      			<div>
      				<div>
      					<header class="_13KHfN73YmQgsYHxXvuh_J _1roJokHGjgDRbKmh0exptw">
      						<div>
      							<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj" style="margin-bottom: 2.5rem;">
      								<div class="_13KHfN73YmQgsYHxXvuh_J _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _3sFSjAZS4gQdCAyN3OfyFG _2-N-uV2y5apkjtxqdVnsop jvBXmsw6c8TD5NU0Gn0P6">
      									<i class="_3mTSvU3h91WI2gAoO_w9i4 _254YPhBOB9qv7-J8bIg7co _1QY7TzdLHKX3-BKPDNNYKF"></i>
      									<span>프로젝트를 작성하면서 궁금하신 사항은&nbsp;
      										<a href="https://help.tumblbug.com/hc/ko/categories/115001047328" target="_blank" rel="noopener noreferrer" style="font-weight: bold; color: rgb(58, 111, 242); cursor: pointer;">창작자 센터</a>에서 도움말을 찾아보세요.
      									</span>
      								</div>
      							</div>
      							<!-- <div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj _3an1XS2KtYqHkt90bx9SHY" style="position: relative;">
      								<div class="_13KHfN73YmQgsYHxXvuh_J _2-N-uV2y5apkjtxqdVnsop T5IOxRC0hd8rBc-PLPMlF">
      									<a class="_13KHfN73YmQgsYHxXvuh_J _3fJsfvAPykJzj2xoMnxzWW _1Qdv504-1XMeYXZyb0xQZT _3SbGdzxKM6M_AeOQWLNqks" href="http://www.tumblbug.com/c4db0579-dfaa-4ce9-a916-5b6d462020cf" style="z-index: 11; position: relative;">
      										<i class="_12_kkIo9po-wf5m9SVSerq _1QY7TzdLHKX3-BKPDNNYKF"></i>
      										<label>미리보기</label>
      									</a>
      								</div>
      							</div> -->
      							<div class="_13KHfN73YmQgsYHxXvuh_J _3qrj1CcqiU767c8teG6imW _2Xkf-oIN3dW3T7P_qmRJv3">
      								<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">
      									<a class="rLqvd1axk9i-3cU72yTkF _3Syz9fGXYtzMNqK_55A2BW">
      										<h5>
      											<label> 
      												<span>
      													<span>프로젝트</span>
      													<span>개요</span>
      												</span>
      											</label>
      										</h5>
      									</a>
      								</div>
      							</div>
      						</div>
      					</header>
      				</div>
      			</div>
      			<div>
      				<section>
      					<div class="_13KHfN73YmQgsYHxXvuh_J _1abzWO2yE0ZJ7OiXOf85f5 _4S0ikJ5kL9iaC8TQbNr2J"></div>
      					<h3 class="_13KHfN73YmQgsYHxXvuh_J _2XNIh_QZv4rPkHih1iN3Yt _3o6iE1ko5_AeTlpXebXsBb">
      						<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">프로젝트 개요</div>
      					</h3>
     						<div class="_13KHfN73YmQgsYHxXvuh_J CoIrJwj-n2Pdokdf8d4qE _1WARcEqqT_Pem8leg2dkMj">
							<!-- 프로젝트 제목 입력하기 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" style="margin: 0rem 0;" id="subject">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 제목</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="subject_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="subject_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 제목을 입력해주세요.
												</a>
												<h3 id="subject_input_after" style="display: none; margin-top: 0;"></h3>
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>입력하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l" style="margin: 0rem 0; display: none;" id="subject_info">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 제목</label>
										<div style="">
											<div>
												<p>프로젝트에 멋진 제목을 붙여주세요. 감정에 호소하는 제목보다는 만드시려는 창작물, 작품명, 혹은 프로젝트의 주제가 드러나게 써주시는 것이 좋습니다. 공간이 부족한 곳에 쓰일 7자 이내의 짧은 제목도 정해주세요.</p>
												<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv">
													<div class="_13KHfN73YmQgsYHxXvuh_J O-evLfgVQbD3QZA_PvfT_ _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
														<h5>프로젝트 제목</h5>
														<div style="width: 100%;">
															<div>
																<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd _3nB1fZxEqXMiqXF-c7b1XQ  ">
																	<form:input path="subject" placeholder="프로젝트 제목을 입력해주세요" id="input_subject"/>
																</div>
															</div>
															<div style="display: flex; justify-content: space-between;">
																<div class="_13KHfN73YmQgsYHxXvuh_J WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _2-N-uV2y5apkjtxqdVnsop _1xou6XDdjhr5t3_tfAMqmg jvBXmsw6c8TD5NU0Gn0P6">16자 이내로 써주세요</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
												<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop" onclick="subject_cancle()">
														<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
													</button>
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _1j452e49HyLjnC-u8oPCHq" id="subject_save">
														<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
							<!--대표이미지 설정하기 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" id="main" style="margin: 0rem 0;">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 대표 이미지</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="main_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="main_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 대표 이미지를 등록해주세요.
												</a>
												<img class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _2aquK6B3D0GYX7zQT4_IR7" src="#" alt="프로젝트 대표" id="main_input_after" style="display: none;">
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>업로드하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH-" id="main_info" style="display: none; margin: 0rem 0;">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>프로젝트 대표 이미지</label>
										<p>대표 이미지는 프로젝트의 가장 중요한 시각적 요소입니다.
											<br>후원자들이 프로젝트의 내용을 쉽게 파악하고 좋은 인상을 받을 수 있게 하기 위해 다음 가이드라인에 따라 디자인해 주세요.
										</p>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv">
											<div class="O-evLfgVQbD3QZA_PvfT_ _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ" style="width: 50%!important;">
												<div class="">
													<img id="main_blah" src="#" style="width:100%; height: 100%; display: none;"/>
													<div class="_3rzNLoSt7yWgc2zzlY9duD _37QxkzyLLTu59r6NSOaCE _2aquK6B3D0GYX7zQT4_IR7 _1f86jtPAIf76j1fECudW7t" id="main_btn-upload">
														<i class="_3Hs9Qa2HoKTK0Bt1LDlMh_ fzyVh1bUoUslkFs-rPjbw _2aquK6B3D0GYX7zQT4_IR7 _1R0ZK0Z1zZIqLZ8NkjnsD6 _1QY7TzdLHKX3-BKPDNNYKF"></i>
														<h4>이미지 업로드</h4>
														<p>파일 형식은 jpg 또는 png로, 사이즈는<br>가로 1,240px, 세로 930px 이상으로 올려주세요.</p>
														<p></p>
														<div class="_13KHfN73YmQgsYHxXvuh_J _3sFSjAZS4gQdCAyN3OfyFG _3SbGdzxKM6M_AeOQWLNqks">
															<span>
																<i class="_2Bj5CPWMCPsh-eeXFlOdE8 _1QY7TzdLHKX3-BKPDNNYKF"></i>이미지 파일 선택하기
															</span>
														</div>
													</div>
													<div class="_3rzNLoSt7yWgc2zzlY9duD _2aquK6B3D0GYX7zQT4_IR7 _1f86jtPAIf76j1fECudW7t" id="main_btn-uploading" style="display: none;">
														<i class="_3Hs9Qa2HoKTK0Bt1LDlMh_ fzyVh1bUoUslkFs-rPjbw _2aquK6B3D0GYX7zQT4_IR7 _1R0ZK0Z1zZIqLZ8NkjnsD6 _1QY7TzdLHKX3-BKPDNNYKF"></i>
														<h4>파일을 업로드하는 중입니다</h4>
														<div class="_13KHfN73YmQgsYHxXvuh_J _28LKn930rfRFkZT8rldrUE _1Wxx18kEfVPxJvla-FdZGF _3Syz9fGXYtzMNqK_55A2BW" data-percent="100">
															<div class="_2L0-7hWDrYoa3rVDPaZC_T" style="transition-duration: 300ms; width: 0%;" id="main_loading">
																<div class="_1Wxx18kEfVPxJvla-FdZGF">
																	<div id="main_output">0</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
											<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _1Qdv504-1XMeYXZyb0xQZT" id="main_btn-upload2" style="display: none;">
													<i class="_2Bj5CPWMCPsh-eeXFlOdE8 _1QY7TzdLHKX3-BKPDNNYKF"></i>다른 이미지 파일로 교체하기
												</button>
												<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv" onclick="main_close()">
													<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>닫기
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="file" accept=".gif, .jpg, .png" id="mainimg" style="display: none;" name="main_image">
							
							
							
							<!-- 배너이미지 설정하기 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" id="banner" style="margin: 0rem 0;">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 배너 이미지</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="banner_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="banner_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 배너 이미지를 등록해주세요.
												</a>
												<img class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _2aquK6B3D0GYX7zQT4_IR7" src="#" alt="프로젝트 대표" id="banner_input_after" style="display: none;">
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>업로드하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH-" id="banner_info" style="display: none; margin: 0rem 0;">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>프로젝트 배너 이미지</label>
										<p>배너 이미지는 프로젝트의 가장 중요한 시각적 요소입니다.
											<br>후원자들이 프로젝트의 내용을 쉽게 파악하고 좋은 인상을 받을 수 있게 하기 위해 다음 가이드라인에 따라 디자인해 주세요.
										</p>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv">
											<div class="O-evLfgVQbD3QZA_PvfT_ _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ" style="width: 100%!important;">
												<div class="">
													<img id="banner_blah" src="#" style="width:100%; height: 100%; display: none;"/>
													<div class="_3rzNLoSt7yWgc2zzlY9duD _37QxkzyLLTu59r6NSOaCE _2aquK6B3D0GYX7zQT4_IR7 _1f86jtPAIf76j1fECudW7t" id="banner_btn-upload">
														<i class="_3Hs9Qa2HoKTK0Bt1LDlMh_ fzyVh1bUoUslkFs-rPjbw _2aquK6B3D0GYX7zQT4_IR7 _1R0ZK0Z1zZIqLZ8NkjnsD6 _1QY7TzdLHKX3-BKPDNNYKF"></i>
														<h4>이미지 업로드</h4>
														<p>파일 형식은 jpg 또는 png로, 사이즈는<br>가로 1,240px, 세로 930px 이상으로 올려주세요.</p>
														<p></p>
														<div class="_13KHfN73YmQgsYHxXvuh_J _3sFSjAZS4gQdCAyN3OfyFG _3SbGdzxKM6M_AeOQWLNqks">
															<span>
																<i class="_2Bj5CPWMCPsh-eeXFlOdE8 _1QY7TzdLHKX3-BKPDNNYKF"></i>이미지 파일 선택하기
															</span>
														</div>
													</div>
													<div class="_3rzNLoSt7yWgc2zzlY9duD _2aquK6B3D0GYX7zQT4_IR7 _1f86jtPAIf76j1fECudW7t" id="banner_btn-uploading" style="display: none;">
														<i class="_3Hs9Qa2HoKTK0Bt1LDlMh_ fzyVh1bUoUslkFs-rPjbw _2aquK6B3D0GYX7zQT4_IR7 _1R0ZK0Z1zZIqLZ8NkjnsD6 _1QY7TzdLHKX3-BKPDNNYKF"></i>
														<h4>파일을 업로드하는 중입니다</h4>
														<div class="_13KHfN73YmQgsYHxXvuh_J _28LKn930rfRFkZT8rldrUE _1Wxx18kEfVPxJvla-FdZGF _3Syz9fGXYtzMNqK_55A2BW" data-percent="100">
															<div class="_2L0-7hWDrYoa3rVDPaZC_T" style="transition-duration: 300ms; width: 0%;" id="banner_loading">
																<div class="_1Wxx18kEfVPxJvla-FdZGF">
																	<div id="banner_output">0</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
											<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _1Qdv504-1XMeYXZyb0xQZT" id="banner_btn-upload2" style="display: none;">
													<i class="_2Bj5CPWMCPsh-eeXFlOdE8 _1QY7TzdLHKX3-BKPDNNYKF"></i>다른 이미지 파일로 교체하기
												</button>
												<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv" onclick="banner_close()">
													<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>닫기
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="file" accept=".gif, .jpg, .png" id="bannerimg" style="display: none;" name="banner_image">
							
							
							
							
							<!-- 프로젝트 카테고리 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" style="margin: 0rem 0;" id="cate">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 카테고리</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="cate_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="cate_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 카테고리를 입력해주세요.
												</a>
												<h3 id="cate_input_after" style="display: none; margin-top: 0;"></h3>
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>입력하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l" style="margin: 0rem 0; display: none;" id="cate_info">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>프로젝트 카테고리</label>
										<div style="">
											<div>
												<div>프로젝트의 성격에 맞는 카테고리를 선택해 주세요.<br>(프로젝트 성격과 맞지 않는 카테고리를 선택하실 시 후원자가 해당 프로젝트를 찾기 어려워지기에 에디터에 의해 조정될 수 있습니다.)</div>
												<div class="_13KHfN73YmQgsYHxXvuh_J _3nB1fZxEqXMiqXF-c7b1XQ _25P2Jb3SrgiAhvibHBFOrS _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd">
													<div>
														<form:select path="category" class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd _3vQWHh2J_erdzly2Ip3e87" id="input_cate">
															<option value="" selected disabled hidden>프로젝트 카테고리를 정해주세요</option>
															<option value="게임">게임</option>
															<option value="공예">공예</option>
															<option value="영화·비디오">영화·비디오</option>
															<option value="패션">패션</option>
															<option value="만화">만화</option>
															<option value="디자인">디자인</option>
															<option value="음악">음악</option>
															<option value="테크놀로지">테크놀로지</option>
														</form:select>
													</div>
												</div>
												<br>
											</div>
											<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
												<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop" onclick="cate_cancle()">
														<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
													</button>
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww" id="cate_save">
														<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
							
							<!-- 프로젝트 요약 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" style="margin: 0rem 0;" id="summary">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 요약</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="summary_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="summary_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 요약을 입력해주세요.
												</a>
												<span id="summary_input_after" style="display: none; margin-top: 0;"></span>
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>입력하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l" style="margin: 0rem 0; display: none;" id="summary_info">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>프로젝트 요약</label>
										<div style="">
											<div>
												<p>후원자 분들에게 본 프로젝트를 간략하게 소개해 봅시다.</p>
												<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
													<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
														<form:textarea path="summary" placeholder="프로젝트 요약을 입력해주세요" rows="2" style="width: 100%;" id="input_summary"/>
														<div style="display: flex; justify-content: space-between;">
															<div class="_13KHfN73YmQgsYHxXvuh_J WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _2-N-uV2y5apkjtxqdVnsop _1xou6XDdjhr5t3_tfAMqmg jvBXmsw6c8TD5NU0Gn0P6">50자 이내로 작성해주세요</div>
														</div>
													</div>
												</div>
												<br>
											</div>
											<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
												<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop" onclick="summary_cancle()">
														<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
													</button>
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww" id="summary_save">
														<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
							
							<!-- 프로젝트 목표금액설정 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" style="margin: 0rem 0;" id="money">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>목표금액</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="money_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="money_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>목표 금액을 입력해주세요.
												</a>
												<h3 id="money_input_after" style="display: none; margin-top: 0;"></h3>
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>입력하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l" style="margin: 0rem 0; display: none;" id="money_info">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>목표 금액</label>
										<div style="">
											<div>
												<div>이번 프로젝트를 통해 모으고자 하는 펀딩 목표 금액이 얼마인가요?
													<br>마감일 자정까지 목표 금액을 100% 이상 달성하셔야만 모인 후원금이 결제 됩니다.
													<br>막판에 후원을 취소하는 후원자들도 있는 점을 감안해 10% 이상 초과 달성을 목표로 하시는게 안전합니다.
													<br>(목표 금액은 제작비, 선물 배송비, 창작자의 인건비, 예비 비용 등을 고려하시기 바랍니다.)
												</div>
												<div>
													<div class="_13KHfN73YmQgsYHxXvuh_J _1za37OzUQqJfl3TEKlkYHi _3jflGAwHlQ83oL7U52brix _3_IGkn3uaje0g2ZA6Tx9wd">
														<form:input path="goal" value="" id="input_money" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
														<label for="fundingGoalAmountInput">원 </label> 
													</div>
													<div class="_13KHfN73YmQgsYHxXvuh_J _3WyCNpfRrfze5XqBAKgG6j _1Qdv504-1XMeYXZyb0xQZT _2rCeEoFeBzvCYn76udqnww _3D9sfZXrWd8it3eUCuCTc8" id="money_warning">5,000원 이상인 금액을 입력해주세요.</div>
												</div>
												<br>
											</div>
											<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
												<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop" onclick="money_cancle()">
														<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
													</button>
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww" id="money_save">
														<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
							
							<!-- 프로젝트 마감일설정 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" style="margin: 0rem 0;" id="clodate">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 마감일</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="clodate_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="clodate_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 마감일을 입력해주세요.
												</a>
												<h3 id="clodate_input_after" style="display: none; margin-top: 0;"></h3>
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>입력하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l" style="margin: 0rem 0; display: none;" id="clodate_info">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>프로젝트 마감일</label><div style="">
											<div>
												<div>
													<div>펀딩이 끝나는 마감일을 정해주세요.
														<div class="_13KHfN73YmQgsYHxXvuh_J _1Qdv504-1XMeYXZyb0xQZT jvBXmsw6c8TD5NU0Gn0P6">
															<h5 class="-UobvSeyUG6cEWYnht50S">마감일을 정할 때 주의할 점</h5>
															<p>펀딩 마감일은 오늘로부터 60일 이내의 날짜 중에 고르실 수 있습니다. 이미 선물을 만드셨다면, 선물 실행일 중에 마감일보다 이른 날짜가 있지는 않은지 꼭 확인해주세요.</p>
														</div>
													</div>
													<br>
												</div>
												<div>
													<div class="_1za37OzUQqJfl3TEKlkYHi _3_IGkn3uaje0g2ZA6Tx9wd">
														<label for="">오늘로부터</label>
														<input type="number" class="_3OMXzNQeMKl4iooK-BKZYd _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd " value="1"  min="1" max="60" id="input_clodate">
														<label for="">&ensp;일 뒤인&ensp;</label>
														<div class="_2SKerhxZJUQwe_7t7kn8ej">
															<div class="react-datepicker__input-container">
																<form:input path="deadline" class="_2HJjAyHwCOYLop8JvycDDF _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd" id="today_date"/>
															</div>
														</div>
														<label for="">&ensp;에 펀딩을 마감합니다.</label>
													</div>
												</div>
												<br>
											</div>
											<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
												<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop" onclick="clodate_cancle()">
														<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
													</button>
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww" id="clodate_save">
														<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
							
							<!-- 프로젝트 스토리설정 -->
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-" style="margin: 0rem 0;" id="story">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
									<label>프로젝트 스토리</label>
										<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="story_open()">
											<div class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
												<a id="story_input_before">
													<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>프로젝트 스토리를 입력해주세요.
												</a>
												<div id="story_input_after" style="display: none; margin-top: 0;"></div>
											</div>
											<div class="_3bWlQdzIFpvwX2B8mnOzgn _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<a>
													<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>입력하기
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l" style="margin: 0rem 0; display: none;" id="story_info">
								<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
										<label>프로젝트 스토리</label>
										<div style="">
											<div>
												<p>&nbsp;
													<a target="_blank" rel="noopener noreferrer" href="https://help.tumblbug.com/hc/ko/articles/115007213187">[프로젝트 스토리는 어떻게 작성해야 하나요?]</a>를 읽어보시고 스토리텔링에 필요한 요소들을 확인하여 작성해주세요.
												</p>
												<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
													<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
														<form:textarea path="story" style="width: 100%;" id="edit"/>
														<script type="text/javascript">
															var editor1 = CKEDITOR.replace('edit'
															            	, {height: 500                                                  
															                 });
														</script>
													</div>
												</div>
												<br>
											</div>
											<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
												<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop" onclick="story_cancle()">
														<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
													</button>
													<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww" id="story_save">
														<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>		
						</div>
			      	</section>

			      		<h3 class="_13KHfN73YmQgsYHxXvuh_J _2XNIh_QZv4rPkHih1iN3Yt _3o6iE1ko5_AeTlpXebXsBb">
							<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">선물 구성</div>
						</h3>
					
			      	<section>
			      		<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">
			      			<div id="present_add">	
								<!-- 프로젝트 마감일 설정전 선물하기버튼 -->
								<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj" id="input_clodate_before" style="margin-top: 20px;">
									<div>
										<div data-react-beautiful-dnd-droppable="2" class="_13KHfN73YmQgsYHxXvuh_J _2TxjgvEda9YWbTe8CpK_Ye"></div>
									</div>
									<a id="new-reward" class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo _2rpTvKkYYdMbVEklWlLfhl">
										<div class="_2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _3ZgG-OSv0XE3y-h3oPaDsl">
											<p></p>
											<div class="-UobvSeyUG6cEWYnht50S">
												<h4>선물 추가하기</h4>
											</div>
											<p></p>
											<div class="_3F_kXgcqjiYVIFqaGYLV_x">
												<p>선물을 만들기 전에 프로젝트 마감일을 설정해주세요.</p>
											</div>
											<p></p>
											<div class="_13KHfN73YmQgsYHxXvuh_J _1Qdv504-1XMeYXZyb0xQZT _2rCeEoFeBzvCYn76udqnww _2-N-uV2y5apkjtxqdVnsop _3SbGdzxKM6M_AeOQWLNqks ">
												<span>
													<i class="_1bLZP2LWutT51B05R2iDR8 _254YPhBOB9qv7-J8bIg7co _1QY7TzdLHKX3-BKPDNNYKF"></i>추가하기
												</span>
											</div>
											<p></p>
										</div>
									</a>
								</div>
							
								<!-- 프로젝트 마감일 설정 후 선물하기버튼 -->
								<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj" id="present" style="display: none; margin-top: 20px;" onclick="present_open()" id="present">
									<div>
										<div data-react-beautiful-dnd-droppable="0" class="_13KHfN73YmQgsYHxXvuh_J _2TxjgvEda9YWbTe8CpK_Ye"></div>
									</div>
									<a id="new-reward" class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo">
										<div class="_2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _3ZgG-OSv0XE3y-h3oPaDsl">
											<p></p>
											<div class="-UobvSeyUG6cEWYnht50S">
												<h4>선물 추가하기</h4>
											</div>
											<p></p>
											<div class="_3F_kXgcqjiYVIFqaGYLV_x">
												<p>후원자분들에게 드릴 새로운 선물을 만듭니다.</p>
											</div>
											<p></p>
											<div class="_13KHfN73YmQgsYHxXvuh_J _1Qdv504-1XMeYXZyb0xQZT _2rCeEoFeBzvCYn76udqnww _2-N-uV2y5apkjtxqdVnsop _3SbGdzxKM6M_AeOQWLNqks ">
												<span>
													<i class="_1bLZP2LWutT51B05R2iDR8 _254YPhBOB9qv7-J8bIg7co _1QY7TzdLHKX3-BKPDNNYKF"></i>추가하기
												</span>
											</div>
											<p></p>
										</div>
									</a>
								</div>
								<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH-" id="present_info" style="width: 100%; margin-top: 20px; display: none;">
									<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
										<p class="_13KHfN73YmQgsYHxXvuh_J -UobvSeyUG6cEWYnht50S">선물 추가하기</p>
										<p>후원자 분들에게 드릴 선물 내용을 입력해주세요.</p>
										<div class="_13KHfN73YmQgsYHxXvuh_J _4S0ikJ5kL9iaC8TQbNr2J"></div>
										<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
											<label>최소 후원금액</label>
											<p>인기 금액대인 1만원대 선물부터 특별한 의미를 담은 10만원 이상 선물까지, 다양한 금액대로 구성하면 성공률이 더욱 높아집니다. 배송이 필요한 선물의 경우,
												<b>배송비 포함</b>된 금액으로 작성해주세요.
											</p>
											<h5>
												<div>
													<div class="_13KHfN73YmQgsYHxXvuh_J _1za37OzUQqJfl3TEKlkYHi _3jflGAwHlQ83oL7U52brix _3_IGkn3uaje0g2ZA6Tx9wd">
													<input type="text" value="0" id="input_present_money">
														<label for="fundingGoalAmountInput">원 이상 밀어주시는 분께 드리는 선물입니다.</label>
													</div>
												</div>
											</h5>
										</div>
										<div class="_13KHfN73YmQgsYHxXvuh_J _4S0ikJ5kL9iaC8TQbNr2J"></div>
										<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
											<label class="_13KHfN73YmQgsYHxXvuh_J -UobvSeyUG6cEWYnht50S">선물 설명&nbsp;</label>
											<p>선물 내용을 적어주세요.</p>
											<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
												<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
													<textarea placeholder="예 ) 보드게임베타버전, 패션잡지등" rows="1" style="width: 100%;" id="input_present_name"></textarea>
												</div>
											</div>
										</div>
										<div class="_13KHfN73YmQgsYHxXvuh_J _4S0ikJ5kL9iaC8TQbNr2J"></div>
										<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
											<label>선물 수량</label>
											<p>선물 수량을 정해 주세요.</p>
											<h5>
												<div>
													<div class="_13KHfN73YmQgsYHxXvuh_J _1za37OzUQqJfl3TEKlkYHi _3_IGkn3uaje0g2ZA6Tx9wd">
														<input type="number" min="1" max="100" name="order" value="1" id="input_present_count" style="width: 70px;">
														<label for="orderInput">개</label>
													</div>
												</div>
											</h5>
										</div>
										<div class="_13KHfN73YmQgsYHxXvuh_J _4S0ikJ5kL9iaC8TQbNr2J"></div>
										<div class="_3_IGkn3uaje0g2ZA6Tx9wd">
											<label>예상 전달일</label>
											<p>이 선물을 선택한 후원자들에게 선물을 배송 또는 공개하기로 약속하는 날입니다.
												<strong>결제 종료일 이후의 날짜</strong>인지 확인해서 정해주세요.
											</p>
											<div>
												<div class="_1za37OzUQqJfl3TEKlkYHi _3_IGkn3uaje0g2ZA6Tx9wd ">
													<label for="">결제 종료일로부터</label>
													<input type="number" min="1" max="100" class="_3OMXzNQeMKl4iooK-BKZYd _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd " value="1" id="input_present_date">
													<label for="">&ensp;일 뒤인&ensp;</label>
													<div class="_2SKerhxZJUQwe_7t7kn8ej">
														<div class="react-datepicker__input-container">
															<input type="text" class="_2HJjAyHwCOYLop8JvycDDF _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd " value="" readonly id="present_date">
														</div>
													</div>
													<label for="">&ensp;에 선물을 전달하겠습니다.</label>
												</div>
											</div>
										</div>
										<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
											<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
												<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop" onclick="present_cancle()">
													<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>취소하기
												</button>
												<button type="button" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _1j452e49HyLjnC-u8oPCHq" id="present_save">
													<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>저장하기
												</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>			
			      	</section>

			      	<br>
			      	<br>
			      	<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">
			      		<div class="_1G9_ptFHThtCjXox_uifcH">
			      			<div class="_352AVOtIZ7ivn3BRhw8ufq">
			      				<button type="submit" class="_13KHfN73YmQgsYHxXvuh_J _1QY7TzdLHKX3-BKPDNNYKF _3sFSjAZS4gQdCAyN3OfyFG _3SbGdzxKM6M_AeOQWLNqks RcHjzQ_WjIsTCfrwHunls">작성</button>
			      			</div>
			      		</div>
			      	</div>
			      	<br>
			      	<br>
			      </div>
			      <br>
				</div>
			</div>
		</div>
</form:form> 		
<script type="text/javascript">

	document.addEventListener('keydown', function(event) {
	  if (event.keyCode === 13) {
	    event.preventDefault();
	  };
	}, true);


 window.onload = function(){
    var dt = new Date();
    dt.setDate(dt.getDate()+ 1)
    var Year = dt.getFullYear();        
    var Month = "" + (dt.getMonth()+1);
    var Day = "" + dt.getDate();            
    
    if(Month.length < 2) Month = "0" + Month;
    if(Day.length < 2) Day = "0" + Day;
    
    var Today = Year.toString() + "-" + Month + "-" + Day;
    document.getElementById("today_date").value = Today;
}
 

 /*메인 이미지 입력하기*/
//오픈,오프
	function main_open(){
		document.getElementById("main_info").style.display = "block";
		document.getElementById("main").style.display = "none";
	}
	
	function main_close(){
		document.getElementById("main_info").style.display = "none";
		document.getElementById("main").style.display = "block";
	}


	$(document).ready(function(){	
		$("#mainimg").change(function(){
			readURL_main(this);
		});
	});

	function readURL_main(input){
		$('#main_btn-upload').css("display","none")
		$('#main_btn-uploading').css("display","block")
		$('#main_blah').css("display","none")
		var $main_output = $("#main_output");
       var count = 0;
       var myset = setInterval(function(){
       	 count++;
            $main_output.text(count+"%");
            $("#main_loading").css("width",count+"%")
            if(count==100 && input.files && input.files[0]){ 
           	clearInterval(myset)
           	var reader = new FileReader();
    			reader.onload = function(e){
    				$('#main_blah').attr('src',e.target.result);
    				$('#main_input_after').attr('src',e.target.result);
    			}
    			reader.readAsDataURL(input.files[0]);
    			$('#main_blah').css("display","block")
    			$('#main_btn-upload2').css("display","inline")
    			$('#main_btn-uploading').css("display","none")
    			$('#main_input_before').css("display","none")
    			$('#main_input_after').css("display","block")
            };
       },50); 
	}
	
//파일첨부버튼(메인)	
	$(function () {
		$('#main_btn-upload').click(function (e) {
			e.preventDefault();
			$('#mainimg').click();
		});
	});
	
	$(function () {
		$('#main_btn-upload2').click(function (e) {
			e.preventDefault();
			$('#mainimg').click();
		});
	}); 


/*배너 이미지 입력하기*/
//오픈,오프
	function banner_open(){
		document.getElementById("banner_info").style.display = "block";
		document.getElementById("banner").style.display = "none";
	}
	
	function banner_close(){
		document.getElementById("banner_info").style.display = "none";
		document.getElementById("banner").style.display = "block";
	}


	$(document).ready(function(){	
		$("#bannerimg").change(function(){
			readURL_banner(this);
		});
		
		//금액입력시 숫자말고는 입력이 불가능
		$("#input_money").on("propertychange change keyup paste input", function(){
			var num = Number($("#input_money").val())
			if(num >= 5000){
				$('#money_warning').css("display","none")
			}else{
				$('#money_warning').css("display","inline-block")
			}
		});
		
		
		//날짜입력시 숫자말고는 입력이 불가능
		$("#input_clodate").on("propertychange change keyup paste input", function(){
			var dt = new Date();
			dt.setDate(dt.getDate() + Number($('#input_clodate').val()))
		    var Year = dt.getFullYear();        
		    var Month = "" + (dt.getMonth()+1);
		    var Day = "" + dt.getDate();            
		    
		    if(Month.length < 2) Month = "0" + Month;
		    if(Day.length < 2) Day = "0" + Day;
		    
		    var Today = Year.toString() + "-" + Month + "-" + Day;
		    $('#today_date').val(Today)
		    return Number($('#input_clodate').val())
		});
		
		$("#input_present_date").on("propertychange change keyup paste input", function(){
			var dt = new Date();
			dt.setDate(dt.getDate() + Number($('#input_clodate').val()) + Number($('#input_present_date').val()))
			var Year = dt.getFullYear();        
		    var Month = "" + (dt.getMonth()+1);
		    var Day = "" + dt.getDate();            
		    
		    if(Month.length < 2) Month = "0" + Month;
		    if(Day.length < 2) Day = "0" + Day;
		    
		    var Today = Year.toString() + "-" + Month + "-" + Day;
		    $('#present_date').val(Today)
		});
	});

	function readURL_banner(input){
		$('#banner_btn-upload').css("display","none")
		$('#banner_btn-uploading').css("display","block")
		$('#banner_blah').css("display","none")
		var $banner_output = $("#banner_output");
        var count = 0;
        var myset = setInterval(function(){
        	 count++;
             $banner_output.text(count+"%");
             $("#banner_loading").css("width",count+"%")
             if(count==100 && input.files && input.files[0]){ 
            	clearInterval(myset)
            	var reader = new FileReader();
     			reader.onload = function(e){
     				$('#banner_blah').attr('src',e.target.result);
     				$('#banner_input_after').attr('src',e.target.result);
     			}
     			reader.readAsDataURL(input.files[0]);
     			$('#banner_blah').css("display","block")
     			$('#banner_btn-upload2').css("display","inline")
     			$('#banner_btn-uploading').css("display","none")
     			$('#banner_input_before').css("display","none")
     			$('#banner_input_after').css("display","block")
             };
        },50); 
	}
	
//파일첨부버튼(배너)	
	$(function () {
		$('#banner_btn-upload').click(function (e) {
			e.preventDefault();
			$('#bannerimg').click();
		});
	});
	
	$(function () {
		$('#banner_btn-upload2').click(function (e) {
			e.preventDefault();
			$('#bannerimg').click();
		});
	});

/*프로젝트 제목 입력하기*/
//오픈,오프
	function subject_open(){
		document.getElementById("subject_info").style.display = "block";
		document.getElementById("subject").style.display = "none";
	}
	
	function subject_cancle(){
		document.getElementById("subject_info").style.display = "none";
		document.getElementById("subject").style.display = "block";
	}
	
//글자 저장하기	
	$(function () {
		$('#subject_save').click(function (e) {
			if($('#input_subject').val() == ""){
				$('#subject_info').css("display","none")
				$('#subject').css("display","block")
			}else{
				$('#subject_input_before').css("display","none")
				$('#subject').css("display","block")
				$('#subject_input_after').text($('#input_subject').val());
	 			$('#subject_input_after').css("display","block")
	 			$('#subject_info').css("display","none")
			}
		});
	});

/*프로젝트 카테고리*/
//오픈,오프
	function cate_open(){
		document.getElementById("cate_info").style.display = "block";
		document.getElementById("cate").style.display = "none";
	}
	
	function cate_cancle(){
		document.getElementById("cate_info").style.display = "none";
		document.getElementById("cate").style.display = "block";
	}
	
//카테고리 저장하기
	$(function () {
		$('#cate_save').click(function (e) {
			if($('#input_cate').val() == null){
				$('#cate_info').css("display","none")
				$('#cate').css("display","block")
			}
			else{
				$('#cate_input_before').css("display","none")
				$('#cate').css("display","block")
				$('#cate_input_after').text($('#input_cate').val());
	 			$('#cate_input_after').css("display","block")
	 			$('#cate_info').css("display","none")
			}
		});
	});
	
/*프로젝트 요약*/
//오픈,오프
	function summary_open(){
		document.getElementById("summary_info").style.display = "block";
		document.getElementById("summary").style.display = "none";
	}
	
	function summary_cancle(){
		document.getElementById("summary_info").style.display = "none";
		document.getElementById("summary").style.display = "block";
	}
	
//카테고리 저장하기
	$(function () {
		$('#summary_save').click(function (e) {
			if($('#input_summary').val().trim() == ""){
				$('#summary_info').css("display","none")
				$('#summary').css("display","block")
			}else{
				$('#summary_input_before').css("display","none")
				$('#summary').css("display","block")
				$('#summary_input_after').text($('#input_summary').val());
	 			$('#summary_input_after').css("display","block")
	 			$('#summary_info').css("display","none")
			}
		});
	});
	
/*프로젝트 목표금액*/
//오픈,오프
	function money_open(){
		document.getElementById("money_info").style.display = "block";
		document.getElementById("money").style.display = "none";
	}
	
	function money_cancle(){
		document.getElementById("money_info").style.display = "none";
		document.getElementById("money").style.display = "block";
	}
	
//목표금액 저장하기
	$(function () {
		$('#money_save').click(function (e) {
			if($('#input_money').val().trim() == ""){
				$('#money_info').css("display","none")
				$('#money').css("display","block")
			}else if($('#input_money').val().trim() < 5000){
				alert("5000원 이상 금액을 입력해 주세요.")
			}else{
				$('#money_input_before').css("display","none")
				$('#money').css("display","block")
				$('#money_input_after').text($('#input_money').val());
	 			$('#money_input_after').css("display","block")
	 			$('#money_info').css("display","none")
			}
		});
	});
	
/*프로젝트 마감일*/
//오픈,오프
	function clodate_open(){
		document.getElementById("clodate_info").style.display = "block";
		document.getElementById("clodate").style.display = "none";
	}
	
	function clodate_cancle(){
		document.getElementById("clodate_info").style.display = "none";
		document.getElementById("clodate").style.display = "block";
	}
	
//마감일 저장하기
	$(function () {
		$('#clodate_save').click(function (e) {
			if($('#input_clodate').val() == ""){
				$('#clodate_info').css("display","none")
				$('#clodate').css("display","block")
			}else{
				var dt = new Date();
				dt.setDate(dt.getDate() + Number($('#input_clodate').val()))
			    var Year = dt.getFullYear();        
			    var Month = "" + (dt.getMonth()+1);
			    var Day = "" + dt.getDate();            
			    
			    if(Month.length < 2) Month = "0" + Month;
			    if(Day.length < 2) Day = "0" + Day;
			    
			    var Today = Year.toString() + "-" + Month + "-" + Day;
			    
				$('#clodate_input_before').css("display","none")
				$('#clodate').css("display","block")
				$('#clodate_input_after').text(Today)
	 			$('#clodate_input_after').css("display","block")
	 			$('#clodate_info').css("display","none")
	 			$('#input_clodate_before').css("display","none")
				$('#present').css("display","block")
				
				
				dt = new Date();
				dt.setDate(dt.getDate() + Number($('#input_clodate').val()) + Number($('#input_present_date').val()))
				Year = dt.getFullYear();        
			    Month = "" + (dt.getMonth()+1);
			    Day = "" + dt.getDate();            
			    
			    if(Month.length < 2) Month = "0" + Month;
			    if(Day.length < 2) Day = "0" + Day;
			    
			    Today = Year.toString() + "-" + Month + "-" + Day;
				$('#present_date').val(Today);
			}
		});
	});
	
/*프로젝트 스토리*/
//오픈,오프
		function story_open(){
			document.getElementById("story_info").style.display = "block";
			document.getElementById("story").style.display = "none";
		}
		
		function story_cancle(){
			document.getElementById("story_info").style.display = "none";
			document.getElementById("story").style.display = "block";
		}
		
//스토리 저장하기
		$(function () {
			$('#story_save').click(function (e) {
				var contents = CKEDITOR.instances.edit.getData();
				if(contents == ""){
					$('#story_info').css("display","none")
					$('#story').css("display","block")
				}else{
					$('#story_input_before').css("display","none")
					$('#story').css("display","block")
					$('#story_input_after').empty();
					$('#story_input_after').append(contents);
		 			$('#story_input_after').css("display","block")
		 			$('#story_info').css("display","none")
				}
			});
		}); 		

/*프로젝트 선물구성*/
//오픈,오프
		function present_open(){
			document.getElementById("present_info").style.display = "block";
			document.getElementById("present").style.display = "none";
		}
		
		function present_cancle(){
			document.getElementById("present_info").style.display = "none";
			document.getElementById("present").style.display = "block";
		}
		
		var id_num = 0
		
//스토리 저장하기
		$(function () {
			$('#present_save').click(function (e) {
				if($('#input_present_money').val() == "" || $('#input_present_money').val() == '0' || $('#input_present_money').val() == 0 || $('#input_present_money').val() == null){
					alert("금액을 적어주세요.")
				}else if($('#input_present_name').val().trim() == "" || $('#input_present_name').val() == null){
					alert("내용을 적어주세요.")
				}else{
					$("#present_add").prepend("<div data-react-beautiful-dnd-droppable='1' class='_13KHfN73YmQgsYHxXvuh_J _2TxjgvEda9YWbTe8CpK_Ye' id='#add_present_info'><input type='hidden' name='reward_goal' value='"+ $('#input_present_money').val() +"'/><input type='hidden' name='item_order' value='"+ id_num +"'/><input type='hidden' name='item' value='"+ $('#input_present_name').val() +"'/><input type='hidden' name='itemcnt' value='"+ $('#input_present_count').val() +"'/><input type='hidden' name='reward_date' value='"+ $('#present_date').val() +"'/><div data-react-beautiful-dnd-draggable='1' tabindex='0' data-react-beautiful-dnd-drag-handle='1' aria-roledescription='Draggable item. Press space bar to lift' draggable='false' class='_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo false' style='user-select: none;'><div class='_3ZgG-OSv0XE3y-h3oPaDsl'><span class='WU1ox0-AeDX_zneKjnNMO oAeG34mYkuDyUTybhBMrQ' id='present_remove'><a class='ContextualAction__LinkButton-ks4gvz-0 OzVvj'><i class='_1pt-5UHn7rWHPExbDO4EbO _1QY7TzdLHKX3-BKPDNNYKF'></i><span class='ContextualAction__Label-ks4gvz-1 erEVRg'>삭제하기</span></a></span><div class='-UobvSeyUG6cEWYnht50S'><h4><div style='display:inline;'>" + $('#input_present_money').val() +"</div>원 이상 밀어주시는 분께</h4></div><div class='_3F_kXgcqjiYVIFqaGYLV_x'><p></p></div><div class='_13KHfN73YmQgsYHxXvuh_J dVsuWLqvhq0SupdyOYVal _3XFc3K1AoSi5ujhxKESb0P _1zkZUwfhEQvC8LFxMO9pO9'><div class='_13KHfN73YmQgsYHxXvuh_J rLqvd1axk9i-3cU72yTkF'><div style='display:inline'>"+ $('#input_present_name').val() +"</div> X<div style='display:inline;'> " + $('#input_present_count').val() + "</div></div></div><div class='VgMYktFPH-SSPJjPTFMC'><span class=''>예상 전달일:</span><div style='display: inline;'>"+ $('#present_date').val() +"</div></div></div></div></div>");
					$('#present').css("display","block")
					$('#present_info').css("display","none")
					id_num++
					/* $('#present_input_before').css("display","none")
					$('#present').css("display","block")
					$('#present_input_after').text($('#').val());
		 			$('#present_input_after').css("display","block")
		 			$('#present_info').css("display","none") */
				}
			});
			
			$(document).on("click","#present_remove",function(){
				id_num--;
				$(this).parent().parent().parent().remove();
			});
		});
</script>

</body>
</html>