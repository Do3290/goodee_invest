<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<div>
<c:if test="${myspcnt > 0 }">
<table class="table" width="100%" cellspacing="0" style="text-align: center; border-collapse: collapse;">
	<thead>
		<tr>
			<th style="width: 20%">후원번호</th>
			<th style="width: 20%">후원금액</th>
			<th style="width: 20%">후원주소</th>
			<th style="width: 20%">프로젝트 번호</th>
			<th style="width: 20%">보상상태</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="sp" items="${mysplist}">
			<tr>
				<td>${sp.support_num}</td>
				<td>${sp.support_money}</td>
				<td>${sp.support_address}</td>
				<td>${sp.project_num}</td>
				<td>${sp.reward_state}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:if>
<c:if test="${myspcnt == 0}">
	후원 목록이 없습니다
</c:if>
</div>