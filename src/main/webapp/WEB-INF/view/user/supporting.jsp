<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>후원하기</title>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

</head>
<body>


	<form:form modelAttribute="support" method="post" action="supporting.do" >
	<form:hidden path="id" value="${loginUser.id}" />
<%-- 	<form:hidden path="project_num" value="${project.project_num}" /> --%>
	<div>
			<div
				class="_13KHfN73YmQgsYHxXvuh_J _1abzWO2yE0ZJ7OiXOf85f5 _4S0ikJ5kL9iaC8TQbNr2J"></div>
			<h3
				class="_13KHfN73YmQgsYHxXvuh_J _2XNIh_QZv4rPkHih1iN3Yt _3o6iE1ko5_AeTlpXebXsBb">
				<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">후원 기본 정보</div>
			</h3>
			
			
			<div
				class="_13KHfN73YmQgsYHxXvuh_J CoIrJwj-n2Pdokdf8d4qE _1WARcEqqT_Pem8leg2dkMj">
				<div
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>후원자 이름</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								<div
									class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<div>
										<a><i
											class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _3wXDp_9ZjMHMVuf2NIy5Cg _1QY7TzdLHKX3-BKPDNNYKF"></i>
											<!-- react-text: 405 -->${loginUser.name}<!-- /react-text --></a>
									</div>	</div>		</div>			</div>	</div>		</div>
									
									
				<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _37QxkzyLLTu59r6NSOaCE _2uxYQ-nuPwdol9sQhOjfH-">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label> 후원자 전화번호 </label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								<div
									class="_10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<a><i
										class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF"></i>
										<!-- react-text: 419 --> ${dbuser.tel}<!-- /react-text --></a>
								</div></div></div></div></div>
				
				
				
								

				<div class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>후원자 계좌번호</label>
							<div
								class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;">
								<div
									class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<div>
										<a><i
											class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _3wXDp_9ZjMHMVuf2NIy5Cg _1QY7TzdLHKX3-BKPDNNYKF"></i>
											${a}-${b}-${c}</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				<!-- 				후원할 금액	입력 전		 -->
				<div id="money" style="margin: 0rem 0;" class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>후원할 금액</label>
							<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv" style="cursor: pointer;" onclick="money_show()">
								<div class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
										<a id="money_input_before">
										<i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _3wXDp_9ZjMHMVuf2NIy5Cg _1QY7TzdLHKX3-BKPDNNYKF"></i>
											후원할 금액을 입력해주세요</a>
											<h3 id="money_input_after" style="display: none; margin-top: 0;"></h3>
								</div>
								<div class="_2joJTlnkt26WGpxyvkNuCH _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
									<a>
									<i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i> 입력하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
				
				
				
<!-- 	후원 금액 입력			 -->
				<div style="margin: 0rem 0; display: none;" id="money_info"
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>후원할 금액</label>
							<div style="">
								<div>
									<p>후원할 금액 입력해주세요</p>
									<div class="_13KHfN73YmQgsYHxXvuh_J _3nB1fZxEqXMiqXF-c7b1XQ _10NcCOp7F98F1udFv3te-o _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd">
										<div style="width: 100%;">
											<div>
												<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd _3nB1fZxEqXMiqXF-c7b1XQ  ">
													<form:input path="support_money" id="input_money"
														placeholder="이름을 입력해주세요"/>
												</div>
											</div>
										</div>
									</div>
									<br>
								</div>
								<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
									<div class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
										<button onclick="money_hide()"type="button"
											class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop">
											<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>
											취소하기
										</button>
										<button id="money_save"type="button"
											class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww"
											>
											<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>
											<!-- react-text: 340 -->
											저장하기
											<!-- /react-text -->
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<%--주소 --%>
				<div id="address" style="margin: 0rem 0;" class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l">
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>후원자 주소 페이지</label>
							<div class="_13KHfN73YmQgsYHxXvuh_J _12TAeoYDPLF0sfa3UIt6uZ _3ZTEzsKL-qDLECUGq4QcLv"
								style="cursor: pointer;" onclick="address_show()">
								<div class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
									<div>
									
										<a id="address_input_before"><i class="_3WyCNpfRrfze5XqBAKgG6j WU1ox0-AeDX_zneKjnNMO _3wXDp_9ZjMHMVuf2NIy5Cg _1QY7TzdLHKX3-BKPDNNYKF"></i>
											<!-- react-text: 461 -->후원자 주소를 입력해주세요<!-- /react-text --></a><br>
											<table>
											
											<tr><th style="width:20%;">우편번호</th><th style="width:80%;"id="address_input_after1" style="display: none; margin-top: 0;" ></th></tr>
											<tr><th style="width:20%;">주소</th><th style="width:300px;"id="address_input_after2" style="display: none; margin-top: 0;width:80%;"></th></tr>
											<tr><th style="width:20%;">상세주소</th><th style="width:80%;"id="address_input_after3" style="display: none; margin-top: 0;width:80%;"></th></tr>
											</table>
									</div>
								</div>
								<div
									class="_2joJTlnkt26WGpxyvkNuCH _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
									<a><i class="w6FPSPr8JA6xb8SSjkPtI _1QY7TzdLHKX3-BKPDNNYKF"></i>
									 <!-- react-text: 465 -->입력하기<!-- /react-text --></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<%--주소후 --%>
					<div style="margin: 0rem 0; display: none;" id="address_info"
					class="_13KHfN73YmQgsYHxXvuh_J saXk0rx00KnB6O_X8xIAv _1v_4eDAvRTzbzG-r-p5V8Y _2uxYQ-nuPwdol9sQhOjfH- _2Ixd--hCfOsqcysY6JfD3l"
					>
					<div class="_13KHfN73YmQgsYHxXvuh_J _3U6RUH-EASpZ_j8ls1HJyP">
						<div class="_13KHfN73YmQgsYHxXvuh_J _3_IGkn3uaje0g2ZA6Tx9wd">
							<label>후원자 주소</label>
							<div style="">
								<div>
									<p>후원자 주소를 입력해 주세요!!!!!</p>
									<div style="width: 100%;">
										<div style="width:100px;word-break:break-all;word-wrap:break-word;"
											class="_13KHfN73YmQgsYHxXvuh_J _2BZ2d1rVlQLTkfSvhqEd12 _3nB1fZxEqXMiqXF-c7b1XQ _25P2Jb3SrgiAhvibHBFOrS _152MAijd_UogerBKCVqZR_ _3_IGkn3uaje0g2ZA6Tx9wd">
											<label>우편번호</label><input name="zipcode" id="zipcode" readonly style="width:5%">
											</div><br>
											<div style="width:100%;word-break:break-all;word-wrap:break-word;"><input type="button" onclick="daumZipCode()"value="우편번호 찾기"></div>
												<div style="width:40%;word-break:break-all;word-wrap:break-word;"><label>주소</label><input name="address1" id="address1" size="60"></div>
												<div style="width:40%;word-break:break-all;word-wrap:break-word;"><label>상세주소</label><input name="address2" id="address2"></div>
												
												<%-- 	<form:hidden path="id" value="${loginUser.id}" /> --%>
										</div>																		
									</div>
								</div>
								<div class="_13KHfN73YmQgsYHxXvuh_J _3ZTEzsKL-qDLECUGq4QcLv">
									<div
										class=" _152MAijd_UogerBKCVqZR_ WU1ox0-AeDX_zneKjnNMO _3G8CRXtomRhisiZsw7Spx- _1lLHKI5v9AoCyeggtffvGZ">
										<button type="button"	class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _18T1PLssfUK23Oz9uVd0fv _2-N-uV2y5apkjtxqdVnsop"	onclick="address_hide()">
											<i class="RyvusKQjJRQNgaH8kOM4J _1QY7TzdLHKX3-BKPDNNYKF"></i>
											취소하기
										</button>
										
										<button id="address_save" type="button"
											class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww"
											>
											<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>
											저장하기
										</button>
									</div></div></div></div></div>	
									
										</div>
										<div style="text-align:right" >
									<button type="submit" class="_13KHfN73YmQgsYHxXvuh_J _3SbGdzxKM6M_AeOQWLNqks _2-N-uV2y5apkjtxqdVnsop _2rCeEoFeBzvCYn76udqnww"	>
											<i class="-o8oGI_QAOKsVIJOUOUmV _1QY7TzdLHKX3-BKPDNNYKF"></i>
											작성완료
										</button>
										</div>
										</div>
										</form:form>
		<script>
	function daumZipCode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						if (data.userSelectedType === 'R') {
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						if (data.userSelectedType === 'R') {
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('address1').value = fullAddr;
						document.getElementById('address2').focus();
					}
				}).open();
	}

	function address_show() {
		document.getElementById("address_info").style.display = "block";
		document.getElementById("address").style.display = "none";
	}

	function address_hide() {
		document.getElementById("address_info").style.display = "none";
		document.getElementById("address").style.display = "block";
	}
	function money_show() {
		document.getElementById("money_info").style.display = "block";
		document.getElementById("money").style.display = "none";
	}
	function money_hide() {
		document.getElementById("money_info").style.display = "none";
		document.getElementById("money").style.display = "block";
	}
	
	
	  $(function () {
	      $('#money_save').click(function (e) {
	         if($('#input_money').val() == null){
	            $('#money_info').css("display","none")
	            $('#money').css("display","block")
	         }
	         else{
	            $('#money_input_before').css("display","none")
	            $('#money').css("display","block")
	            $('#money_input_after').text($('#input_money').val());
	             $('#money_input_after').css("display","block")
	             $('#money_info').css("display","none")
	         }
	      });
	   });
	  $(function () {
	      $('#address_save').click(function(e) {
	         if($('#zipcode').val() == null){
	            $('#address_info').css("display","none")
	            $('#address').css("display","block")
	         }
	         else{
	            $('#address_input_before').css("display","none")
	            $('#address').css("display","block")
	            $('#address_input_after1').text($('#zipcode').val());
	            $('#address_input_after2').text($('#address1').val());
	            $('#address_input_after3').text($('#address2').val());
	             $('#address_input_after1').css("display","block")
	             $('#address_input_after2').css("display","block")
	             $('#address_input_after3').css("display","block")
	             $('#address_info').css("display","none")
	         }
	      });
	   });
	  
	  
</script>
</body>
</html>
