<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원한사람목록</title>
</head>
<body>

	<div
		class="_13KHfN73YmQgsYHxXvuh_J _18bwsw29jDyAzIPXzQkoS- _18TDror949wcy2NyVIqpHo _230lG60fN7PryoNPB8Zf0m">
		<div style="align: center;" class="_8mhtaT2WIZtKtaoNO3uoh">
			<span class="WU1ox0-AeDX_zneKjnNMO oAeG34mYkuDyUTybhBMrQ"
				style="text-align: center; font-size: 25px;"> </span>
		</div>
		<div class="xKo-_9M8EJDLXjQD7P_uX"></div>
		<div class="_3ngyn_oTUFrIxTcOgGouoL" style="text-align: center;">
			<c:forEach var="support" items="${supportuserlist}">
				<div class="_3560uqFYsEspUH6-ImjYr2">

					<div class="_8j9TZHp6qi1mJbK4MQFDM">


						<div style="width: 1000px; font-size: 25px;"
							class="_3U9owGBULZAr0pvllg_6Ra">
							
							
							<div class="_2rdXpEjSOLwDFilZKJUHe5">


								<input type="hidden" value=${support.project_num }
									name="project_num"> 후원자 이름 :
								${support.nic}님이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 총&nbsp;
								${support.support_money } &nbsp;를 후원하셨습니다.
							</div>
							
						</div>
						<div
							class="_2dKJQZGqcB1T0xe0DzKY0H _152MAijd_UogerBKCVqZR_ _1lLHKI5v9AoCyeggtffvGZ">
							<div style="width: 1300px;">
							<input type="hidden" value="${support.id }" name="id">
							<input type= "hidden" value="${support.project_num }"name = "project_num">
							
								<c:if test="${support.reward_state eq 0}">
									<b>&nbsp;</b>
									<form action = "givereward.do" method = "post">
									<input type= "hidden" value="${support.project_num }"name = "project_num">
									<button type="submit" style="text-align: right">선물발송</button>
									</form>
								</c:if>
								<c:if test="${support.reward_state eq 1}">
									<b style="text-align: right">선물이 발송중이거나 후원자가 확인 진행중입니다.</b>
								</c:if>
								<c:if test="${support.reward_state eq 2}">
									<b>&nbsp;</b>
									<b style="text-align: right">선물 배송이 완료되었습니다.</b>
								</c:if>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>
			
			
			<div class="_23t6XFLCZFLZIDAzBetmBO"></div>
		</div>
	</div>
</body>
</html>