<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>문의 하기</title>
</head>
<body>
<section id="main" class="wrapper style1" style="background-color:whitesmoke;">
				<header class="major">
					<h2>invest 문의하기</h2>
					<p>이메일 주소와 함께 문의를 남겨주세요. 영업일 기준 2일 내에 답변 드리겠습니다.</p>
					<p>특정 프로젝트에 관한 질문은 해당 프로젝트 페이지 창작자에게 문의하기를 이용해 주세요.</p>
					</header>
				<div class="container">
					<div class="row">
						<div class="8u" style="margin-left:230px;">
							<section class="Qna">
								<h2>문의 하기</h2>
								<form:form modelAttribute="ms" action="message.do"
  									 enctype="multipart/form-data" name="f">
								<table>
								<tr>
									<th>문의 유형</th>
								<td>
									<select>
									<option value="" selected disabled hidden>선택하세요.</option>
									<option value="후원자 - 밀어주기(후원), 결제">후원자 - 밀어주기(후원), 결제</option>
									<option value="후원자 - 후원내역 관리, 선물 수령">후원자 - 후원내역 관리, 선물 수령</option>
									<option value="창작자 - 프로젝트 올리기, 공개검토">창작자 - 프로젝트 올리기, 공개검토</option>
									<option value="창작자 - 프로젝트 관리, 정산, 선물 실행">창작자 - 프로젝트 관리, 정산, 선물 실행</option>
								</select></td></tr>
								<tr>
								<th>보내는 사람</th>
								<td><form:input path="id" /></td>
								</tr>
								<tr>
								<th>받는 사람</th>
								<td><form:input path="rec_id" /></td>
								</tr>
								<tr>
								<th>제목</th>
								<td><form:input path="ms_title" /></td>
								<tr>
								<th>내용</th>
								<td><form:textarea path="ms_content"/></td>
								<tr><td colspan="2" align=center><a href="javascript:document.f.submit()">보내기</a></td>
								</table></form:form>
					</section>
						</div>
					</div>
					<hr class="major" />
					<div class="row">
						<div class="6u">
							<section class="special">
								<a href="#" class="image fit"><img src="images/pic01.jpg" alt="" /></a>
								<h3>Mollis adipiscing nisl</h3>
								<p>Eget mi ac magna cep lobortis faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep commodo id. Ac quis arcu amet. Arcu nascetur lorem adipiscing non faucibus odio nullam arcu lobortis. Aliquet ante feugiat. Turpis aliquet ac posuere volutpat lorem arcu aliquam lorem.</p>
								<ul class="actions">
									<li><a href="#" class="button alt">Learn More</a></li>
								</ul>
							</section>
						</div>
						<div class="6u">
							<section class="special">
								<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
								<h3>Neque ornare adipiscing</h3>
								<p>Eget mi ac magna cep lobortis faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep commodo id. Ac quis arcu amet. Arcu nascetur lorem adipiscing non faucibus odio nullam arcu lobortis. Aliquet ante feugiat. Turpis aliquet ac posuere volutpat lorem arcu aliquam lorem.</p>
								<ul class="actions">
									<li><a href="#" class="button alt">Learn More</a></li>
								</ul>
							</section>
						</div>
					</div>
				</div>
			</section>
</body>
</html>