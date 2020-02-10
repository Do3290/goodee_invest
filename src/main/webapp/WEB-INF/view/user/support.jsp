<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
<title>후원 현황</title>
</head>
<body>
	<div>	
		<div>
			<div class="_36-E9o-CVj2Yk4bQ8xqHDd">
			<c:if test= "${!empty loginUser.pic&& loginUser.pic!=('https://ssl.pstatic.net/static/pwe/address/img_profile.png')}">
				<div class="_2WDOTpGEdEqE3E787EJif6">
				<img src = "${loginUser.pic }" style="width:116px; height:106px;border-radius:70%">
					</div>
					</c:if>
					<c:if test= "${empty loginUser.pic || loginUser.pic==('https://ssl.pstatic.net/static/pwe/address/img_profile.png')}">
					<div class="_2WDOTpGEdEqE3E787EJif6"
					style="background-image: url(&quot;https://tumblbug-upi.imgix.net/defaults/avatar_4.png?ixlib=rb-1.1.0&amp;w=200&amp;h=250&amp;auto=format%2Ccompress&amp;fit=facearea&amp;facepad=2.0&amp;ch=Save-Data&amp;mask=ellipse&amp;s=47b7f1fde4079f1f411c9d0c1c73fc83&quot;);">
					</div>
						</c:if>
				<h3 class="_2v0s3jAcOvrO1YZJoin-dA">${dbuser.nic }님의 후원현황</h3>
			</div>
			<div class="_13KHfN73YmQgsYHxXvuh_J _1WARcEqqT_Pem8leg2dkMj">
				<div
					class="_13KHfN73YmQgsYHxXvuh_J _1v_4eDAvRTzbzG-r-p5V8Y _2Xkf-oIN3dW3T7P_qmRJv3 _2oNWIuKR4Ff3f-20NEuxVB">



					<div class="_2Xkf-oIN3dW3T7P_qmRJv3 _1uUj73FkvEp5d-vO6ERs1v">
						<a class="rLqvd1axk9i-3cU72yTkF _1ROZaFqgkz7jY0-8w9WOrB" onclick="alllist_show()" id="alllistbtn">
							<!-- react-text: 1943 -->모두 보기<!-- /react-text -->
						</a> 
						<a class="rLqvd1axk9i-3cU72yTkF _1ROZaFqgkz7jY0-8w9WOrB" onclick="prolist_show()"id="prolistbtn"> 
						<!-- react-text: 1946 -->펀딩 진행중<!-- /react-text -->
						</a> 
						<a class="rLqvd1axk9i-3cU72yTkF _1ROZaFqgkz7jY0-8w9WOrB" onclick="endlist_show()"id="endlistbtn"> 
						<!-- react-text: 1949 -->결제 완료<!-- /react-text -->
						</a>
					</div>
					<form action = "support.do" method = "post" name="searchform">
					<div class="_2Xkf-oIN3dW3T7P_qmRJv3 _2CBHrIcPwx_e6IBon6f48r">
						<div class="rLqvd1axk9i-3cU72yTkF _3DyJjmaMWQy91-ZSjMJozv">
							<div class="_13KHfN73YmQgsYHxXvuh_J _1QY7TzdLHKX3-BKPDNNYKF _3nB1fZxEqXMiqXF-c7b1XQ">
							<select name="searchtype">
							<option value=""> 선택하세요 </option>
							<option value="subject">프로젝트 제목</option>
							<option value="nic" >닉네임</option>
							<option value="category">카테고리</option>
							</select>
							<script>
							searchform.searchtype.value="${param.searchtype}"
							</script>
							
								<input type="text" placeholder="검색어를 입력하세요" 
								name="searchcontent" value="${param.searchcontent }" style="width:200px;">
								<button type="submit" style= "width : 15%; text-align : center;"> 검색</button>
							</div>
						</div>
					</div>
					</form>
				</div>
				
<!-- 				후원모두 보기 -->
				<div id = alllist>
					<div>
						<div class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _1oJMWnMCW_Y6GmNc1mhqaW jvBXmsw6c8TD5NU0Gn0P6 R7F5O4CVDsX7RdSuLeM7h">
							<i class="_13KHfN73YmQgsYHxXvuh_J _1oJMWnMCW_Y6GmNc1mhqaW _3XFc3K1AoSi5ujhxKESb0P _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
							총 ${supportcount }건의 후원 결과가 있습니다
							
						</div>
					</div>
					<c:if test ='${supportcount == 0}'>
					<div class="_3cxc4NSyrnF191kQI1JcG5">
						<div class="_13KHfN73YmQgsYHxXvuh_J _1Qdv504-1XMeYXZyb0xQZT _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _1WARcEqqT_Pem8leg2dkMj">
							<i class="_13KHfN73YmQgsYHxXvuh_J _1w2gaPjBQN63PcG-XOh9t8 _3Hs9Qa2HoKTK0Bt1LDlMh_ _3RAU_1dXrlkkPhtkKyXSVj _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
							<h3 class="_13KHfN73YmQgsYHxXvuh_J _2rpTvKkYYdMbVEklWlLfhl -UobvSeyUG6cEWYnht50S _1KADeF7po3KC36i4SI6G7H">후원 내역이 없습니다</h3>
						</div>
					</div>
					<div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _1WARcEqqT_Pem8leg2dkMj">
							<div class="_13KHfN73YmQgsYHxXvuh_J mbS4vTO3ZnPNRKeekepTa _3W1O0__fNr3I9XRY0301VC _2-N-uV2y5apkjtxqdVnsop _2Xkf-oIN3dW3T7P_qmRJv3 _1cUNoHdqkeTAYJJGQ0x1-d">
								<a class="_3Syz9fGXYtzMNqK_55A2BW rLqvd1axk9i-3cU72yTkF">1</a>
							</div>
						</div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _1abzWO2yE0ZJ7OiXOf85f5 _4S0ikJ5kL9iaC8TQbNr2J"></div>
					</div>
					</c:if>
					
					<%-- 모두보기 내용이 있을 시 --%>
					<c:if test = '${supportcount>0}'>
					 <c:forEach var="supportlist" items="${supportlist}">
					<div>
					
<div class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo _230lG60fN7PryoNPB8Zf0m">
<div class="_8mhtaT2WIZtKtaoNO3uoh">
<c:if test="${supportlist.datediff >0}">
<b>${supportlist.datediff}일 남았습니다.</b>
</c:if>
<c:if test ="${supportlist.datediff <0 }">
<b>마감된 프로젝트입니다.</b>
</c:if>
<span class="WU1ox0-AeDX_zneKjnNMO oAeG34mYkuDyUTybhBMrQ">
</span></div>
<div class="xKo-_9M8EJDLXjQD7P_uX"></div>
<div class="_3ngyn_oTUFrIxTcOgGouoL">
<div class="_3560uqFYsEspUH6-ImjYr2">
<div class="_8j9TZHp6qi1mJbK4MQFDM" style ="width: 250px;" >
<img alt="보드게임 1945 : 반민족행위특별조사위원회" class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2-N-uV2y5apkjtxqdVnsop _2aquK6B3D0GYX7zQT4_IR7" src="https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/77600238658eba16e6a83ce15d079f85381bc4db/7ce5c85130037b1c9b4ee0a3528233d4925c3da4/5f3bbc3d-c103-4214-9f67-a09aefcb32a9.jpg?ixlib=rb-1.1.0&amp;h=240&amp;w=320&amp;fit=crop&amp;s=e02689106b612a5444ac87c7d3e8956b"></div>
<div class="_2rdXpEjSOLwDFilZKJUHe5"><div>
<c:if test = '${supportlist.datediff>0 }'>
<label class="_13KHfN73YmQgsYHxXvuh_J _1DLNFgQRrQNEosKFB0zOK5 _3sFSjAZS4gQdCAyN3OfyFG _1Qdv504-1XMeYXZyb0xQZT _3D9sfZXrWd8it3eUCuCTc8 _2BIT5x1MzYkxpZlDSFDBBf">펀딩 진행중</label></c:if>
<c:if test = '${supportlist.datediff<0 }'>
<label class="_13KHfN73YmQgsYHxXvuh_J _1DLNFgQRrQNEosKFB0zOK5 _3sFSjAZS4gQdCAyN3OfyFG _1Qdv504-1XMeYXZyb0xQZT _3D9sfZXrWd8it3eUCuCTc8 _2BIT5x1MzYkxpZlDSFDBBf">마감된 프로젝트</label></c:if>

</div>

<div class="_3U9owGBULZAr0pvllg_6Ra">프로젝트 제목 : ${supportlist.subject }&nbsp;&nbsp;</div>
<div class="_1Wdq5ksahoBM2fTphs9mY">프로젝트 요약 : ${supportlist.summary }<br><div>&nbsp;&nbsp;</b>
<br></div>
<div>&nbsp;&nbsp;
<br></div>
</div><div class="_23t6XFLCZFLZIDAzBetmBO">
<b>${supportlist.support_money }원을 후원하셨습니다</b></div></div>
<div class="_2tH89n3Ch5n35AohOlcaaJ">
<input type="hidden" value="${supportlist.support_num }">
<i class="_3IZTJ_lSKq4pCcBiKlOj-W _2HoE4oZGsosJrP4t5ggo2j _3EDOT6mnWfo2CobuYD5UO7 WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF" onclick="location.href='supportdetail.do?support_num=${supportlist.support_num}'" >

</i>

</div>


</div></div></div></div>
</c:forEach>
					</c:if>
				</div>
				
<!-- 				진행중 리스트내용 -->
				<div id = prolist>
					<div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _1oJMWnMCW_Y6GmNc1mhqaW jvBXmsw6c8TD5NU0Gn0P6 R7F5O4CVDsX7RdSuLeM7h">
							<i class="_13KHfN73YmQgsYHxXvuh_J _1oJMWnMCW_Y6GmNc1mhqaW _1oekhGi4UbozIBWqbMk6CN _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
							총 ${supportcount2 }건의 펀딩 진행중인 후원이 있습니다
						</div>
					</div>
					<c:if test = '${supporcount2==0}'>
					<div class="_3cxc4NSyrnF191kQI1JcG5">
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _1Qdv504-1XMeYXZyb0xQZT _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _1WARcEqqT_Pem8leg2dkMj">
							<i
								class="_13KHfN73YmQgsYHxXvuh_J _1oekhGi4UbozIBWqbMk6CN _3Hs9Qa2HoKTK0Bt1LDlMh_ _3RAU_1dXrlkkPhtkKyXSVj _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
							<h3
								class="_13KHfN73YmQgsYHxXvuh_J _2rpTvKkYYdMbVEklWlLfhl -UobvSeyUG6cEWYnht50S _1KADeF7po3KC36i4SI6G7H">펀딩 진행중인 후원이 없습니다</h3>
						</div>
					</div>
					<div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _1WARcEqqT_Pem8leg2dkMj">
							<div
								class="_13KHfN73YmQgsYHxXvuh_J mbS4vTO3ZnPNRKeekepTa _3W1O0__fNr3I9XRY0301VC _2-N-uV2y5apkjtxqdVnsop _2Xkf-oIN3dW3T7P_qmRJv3 _1cUNoHdqkeTAYJJGQ0x1-d">
								<a class="_3Syz9fGXYtzMNqK_55A2BW rLqvd1axk9i-3cU72yTkF">1</a>
							</div>
						</div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _1abzWO2yE0ZJ7OiXOf85f5 _4S0ikJ5kL9iaC8TQbNr2J"></div>
					</div>
					</c:if>
					 <c:forEach var="supportlist" items="${supportlist}">
					
					<c:if test = "${supportlist.datediff>0}">
					 	
					<div>
				
<div class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo _230lG60fN7PryoNPB8Zf0m">
<div class="_8mhtaT2WIZtKtaoNO3uoh">
<b>${supportlist.datediff }일 남았습니다.</b>
<span class="WU1ox0-AeDX_zneKjnNMO oAeG34mYkuDyUTybhBMrQ">

</span></div>
<div class="xKo-_9M8EJDLXjQD7P_uX"></div>
<div class="_3ngyn_oTUFrIxTcOgGouoL">
<div class="_3560uqFYsEspUH6-ImjYr2">
<div class="_8j9TZHp6qi1mJbK4MQFDM">
<img alt="보드게임 1945 : 반민족행위특별조사위원회" class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2-N-uV2y5apkjtxqdVnsop _2aquK6B3D0GYX7zQT4_IR7" src="https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/77600238658eba16e6a83ce15d079f85381bc4db/7ce5c85130037b1c9b4ee0a3528233d4925c3da4/5f3bbc3d-c103-4214-9f67-a09aefcb32a9.jpg?ixlib=rb-1.1.0&amp;h=240&amp;w=320&amp;fit=crop&amp;s=e02689106b612a5444ac87c7d3e8956b"></div>
<div class="_2rdXpEjSOLwDFilZKJUHe5"><div>
<label class="_13KHfN73YmQgsYHxXvuh_J _1DLNFgQRrQNEosKFB0zOK5 _3sFSjAZS4gQdCAyN3OfyFG _1Qdv504-1XMeYXZyb0xQZT _3D9sfZXrWd8it3eUCuCTc8 _2BIT5x1MzYkxpZlDSFDBBf">펀딩 진행중</label></div>
<div class="_3U9owGBULZAr0pvllg_6Ra">프로젝트 제목 : ${supportlist.subject }&nbsp;&nbsp;</div>
<div class="_1Wdq5ksahoBM2fTphs9mY">프로젝트 요약 : ${supportlist.summary }<br><div>&nbsp;&nbsp;</b>
<br></div>
<div>&nbsp;&nbsp;
<br></div>
</div><div class="_23t6XFLCZFLZIDAzBetmBO">
<b>${supportlist.support_money }원을 후원하셨습니다</div></div>
<div class="_2tH89n3Ch5n35AohOlcaaJ">


<i class="_3IZTJ_lSKq4pCcBiKlOj-W _2HoE4oZGsosJrP4t5ggo2j _3EDOT6mnWfo2CobuYD5UO7 WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF">
</i>
</div>


</div></div></div></a></div>
</c:if></c:forEach>
				</div>
				
<!-- 				결제완료 리스트 내용 -->
				<div id  = endlist>
					<div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _1oJMWnMCW_Y6GmNc1mhqaW jvBXmsw6c8TD5NU0Gn0P6 R7F5O4CVDsX7RdSuLeM7h">
							<i class="_13KHfN73YmQgsYHxXvuh_J _1oJMWnMCW_Y6GmNc1mhqaW _2e-d7CO6w7x9YJNxiPl5HR _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
							총${supportcount1 }건의 결제 완료된 후원이 있습니다
						</div>
					</div>
					
					<c:if test = '${supportcount1 == 0}'>
					<div class="_3cxc4NSyrnF191kQI1JcG5">
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _1Qdv504-1XMeYXZyb0xQZT _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _1WARcEqqT_Pem8leg2dkMj">
							<i
								class="_13KHfN73YmQgsYHxXvuh_J _2e-d7CO6w7x9YJNxiPl5HR _3Hs9Qa2HoKTK0Bt1LDlMh_ _3RAU_1dXrlkkPhtkKyXSVj _3fJsfvAPykJzj2xoMnxzWW _1QY7TzdLHKX3-BKPDNNYKF"></i>
							<h3
								class="_13KHfN73YmQgsYHxXvuh_J _2rpTvKkYYdMbVEklWlLfhl -UobvSeyUG6cEWYnht50S _1KADeF7po3KC36i4SI6G7H">결제
								완료된 후원이 없습니다</h3>
						</div>
					</div>	
					<div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _2mDWoxwh1QMJyLM49w7kMZ _3G8CRXtomRhisiZsw7Spx- _1WARcEqqT_Pem8leg2dkMj">
							<div
								class="_13KHfN73YmQgsYHxXvuh_J mbS4vTO3ZnPNRKeekepTa _3W1O0__fNr3I9XRY0301VC _2-N-uV2y5apkjtxqdVnsop _2Xkf-oIN3dW3T7P_qmRJv3 _1cUNoHdqkeTAYJJGQ0x1-d">
								<a class="_3Syz9fGXYtzMNqK_55A2BW rLqvd1axk9i-3cU72yTkF">1</a>
							</div>
						</div>
						<div
							class="_13KHfN73YmQgsYHxXvuh_J _1abzWO2yE0ZJ7OiXOf85f5 _4S0ikJ5kL9iaC8TQbNr2J"></div>
					</div>
					</c:if>
					
					
					<c:forEach var="supportlist" items="${supportlist}">
					<c:if test = '${supportlist.datediff<0 }'>
					<div>
<div class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo _230lG60fN7PryoNPB8Zf0m">
<div class="_8mhtaT2WIZtKtaoNO3uoh">
<b>마감된 프로젝트입니다.</b>
<span class="WU1ox0-AeDX_zneKjnNMO oAeG34mYkuDyUTybhBMrQ">
</span></div>
<div class="xKo-_9M8EJDLXjQD7P_uX"></div>
<div class="_3ngyn_oTUFrIxTcOgGouoL">
<div class="_3560uqFYsEspUH6-ImjYr2">
<div class="_8j9TZHp6qi1mJbK4MQFDM">
<img alt="보드게임 1945 : 반민족행위특별조사위원회"style ="width: 250px;" class="_13KHfN73YmQgsYHxXvuh_J _2H5AJMZT-xLtuIvR5jP8rd _2-N-uV2y5apkjtxqdVnsop _2aquK6B3D0GYX7zQT4_IR7" src="https://tumblbug-pci.imgix.net/dfd6741e6221c177ba50d064c6f64cbc6f8edc53/77600238658eba16e6a83ce15d079f85381bc4db/7ce5c85130037b1c9b4ee0a3528233d4925c3da4/5f3bbc3d-c103-4214-9f67-a09aefcb32a9.jpg?ixlib=rb-1.1.0&amp;h=240&amp;w=320&amp;fit=crop&amp;s=e02689106b612a5444ac87c7d3e8956b"></div>
<div class="_2rdXpEjSOLwDFilZKJUHe5"><div>
<label class="_13KHfN73YmQgsYHxXvuh_J _1DLNFgQRrQNEosKFB0zOK5 _3sFSjAZS4gQdCAyN3OfyFG _1Qdv504-1XMeYXZyb0xQZT _3D9sfZXrWd8it3eUCuCTc8 _2BIT5x1MzYkxpZlDSFDBBf">마감된 프로젝트</label></div>
<div class="_3U9owGBULZAr0pvllg_6Ra">프로젝트 제목 : ${supportlist.subject }&nbsp;&nbsp;</div>
<div class="_1Wdq5ksahoBM2fTphs9mY">프로젝트 요약 : ${supportlist.summary }<br><div>&nbsp;&nbsp;</b>
<br></div>
<div>&nbsp;&nbsp;
<br></div>
</div><div class="_23t6XFLCZFLZIDAzBetmBO">
<b>${supportlist.support_money }원을 후원하셨습니다</div></div>
<div class="_2tH89n3Ch5n35AohOlcaaJ"><i class="_3IZTJ_lSKq4pCcBiKlOj-W _2HoE4oZGsosJrP4t5ggo2j _3EDOT6mnWfo2CobuYD5UO7 WU1ox0-AeDX_zneKjnNMO _1QY7TzdLHKX3-BKPDNNYKF">
</i></div></div></div></div></a></div>
</c:if></c:forEach>
				</div>
			</div>
		</div>
	</div>
	<script>
	document.getElementById("alllist").style.display="block";
	document.getElementById("prolist").style.display="none";
	document.getElementById("endlist").style.display="none";
	document.getElementById("alllistbtn").style.color="blue";
	document.getElementById("prolistbtn").style.color="black";
	document.getElementById("endlistbtn").style.color="black";
	document.getElementById("alllistbtn").style.backgroundColor = "lightgray";
	document.getElementById("prolistbtn").style.backgroundColor = "WhiteSmoke";
	document.getElementById("endlistbtn").style.backgroundColor = "WhiteSmoke";
	function alllist_show() {
		document.getElementById("alllist").style.display = "block";
		document.getElementById("prolist").style.display = "none";
		document.getElementById("endlist").style.display = "none";
		document.getElementById("alllistbtn").style.color="blue";
		document.getElementById("prolistbtn").style.color="black";
		document.getElementById("endlistbtn").style.color="black";
		document.getElementById("alllistbtn").style.backgroundColor = "lightgray";
		document.getElementById("prolistbtn").style.backgroundColor = "WhiteSmoke";
		document.getElementById("endlistbtn").style.backgroundColor = "WhiteSmoke";
	}
	function prolist_show() {
		document.getElementById("prolist").style.display = "block";
		document.getElementById("alllist").style.display = "none";
		document.getElementById("endlist").style.display = "none";
		document.getElementById("prolistbtn").style.color="blue";
		document.getElementById("alllistbtn").style.color="black";
		document.getElementById("endlistbtn").style.color="black";
		document.getElementById("prolistbtn").style.backgroundColor = "lightgray";
		document.getElementById("alllistbtn").style.backgroundColor = "WhiteSmoke";
		document.getElementById("endlistbtn").style.backgroundColor = "WhiteSmoke";
	}
	function endlist_show() {
		document.getElementById("endlist").style.display = "block";
		document.getElementById("prolist").style.display = "none";
		document.getElementById("alllist").style.display = "none";
		document.getElementById("endlistbtn").style.color="blue";
		document.getElementById("alllistbtn").style.color="black";
		document.getElementById("prolistbtn").style.color="black";
		document.getElementById("endlistbtn").style.backgroundColor = "lightgray";
		document.getElementById("alllistbtn").style.backgroundColor = "WhiteSmoke";
		document.getElementById("prolistbtn").style.backgroundColor = "WhiteSmoke";
	}
	</script>
</body>
</html>