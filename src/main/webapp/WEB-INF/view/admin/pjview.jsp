<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<div>
<table class="table" width="100%" cellspacing="0" style="text-align: center; border-collapse: collapse;">
	<thead>
		<tr>
			<th style="width: 30%">메인 이미지</th>
			<th style="width: 70%">프로젝트 요약</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><img style="width:200px;height:200px;"src="../page/file/${mainimg}"/></td>
			<td>${summary}</td>
		</tr>
	</tbody>
</table>
</div>