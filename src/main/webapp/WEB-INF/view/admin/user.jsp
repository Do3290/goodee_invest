<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script>
	$(function() {
  		$(".mybtn").on('click',function() {
			var checkBtn = $(this);
			var tr = checkBtn.parent().parent();
			var td = tr.find("td")
			var userid = td.eq(2).text();
			
			$.ajax({
				url:"spview.do",
		        type:'POST',
		        data: {"id" : userid},
		        success:function(data){
		        	$('#spdata').html(data);
					$('#spModal').modal('toggle');
		        }
			})
			
		});  
		$("#allcheck").click(function() {
			var bool = $("input[name=idchks]").is(":checked");
			if (bool) $("input[name=idchks]").prop("checked", false);
			else $("input[name=idchks]").prop("checked", true);
		});
		$("#example-table-1 tr:even").addClass("odd");
		$("#example-table-1 tr:not(.odd)").hide();
		$("#example-table-1 tr:first-child").show();
		$("#example-table-1 tr.odd").click(function() {
			$(this).next("tr").toggle();
			});
	
	});
	function listdo(page){
		document.searchform.pageNum.value=page;
		document.searchform.submit();
	}
	
</script>
</head>
<body>
	<div class="card mb-3">
		<div class="card-body">
			<!-- 검색 창 폼 -->
			<form action="user.do" method="post" name="searchform">
				<input type="hidden" name="pageNum" value="1">
				<table class="table" width="100%" cellspacing="0" style="text-align: center">
					<tr>
						<td style="border-width: 0px;">
							<div class="form-group row" style="float: right; width: 50%;">
								<select name="column2" class="custom-select custom-select-sm mr-2"
									style="width: 10%; visibility: hidden;">
								</select>
								<select name="searchtype" class="custom-select custom-select-sm mr-2" style="width: 10%;">
									<option value="">선택</option>
									<option value="nic">닉네임</option>
									<option value="id">아이디</option>
									<option value="name">이름</option>
									<option value="age">나이</option>
								</select>
								<script>
									document.searchform.searchtype.value = "${param.searchtype}";
								</script>
								<input class="form-control form-control-sm  mr-2" type="text"
									name="searchcontent" style="width: 50%" value="${param.searchcontent}">
								<input type="submit" class=" btn  btn-sm btn-primary btn-user mr-2"
									style="width: 10%;" value="검색">
							</div>
						</td>
					</tr>
				</table>
			</form>
			<!-- 검색 창 폼 끝-->
			<!-- 테이블 폼 및 유저 탈퇴 폼-->
			<form action="userdel.do" method="post" name="form">
			<table class="table" width="100%" cellspacing="0" style="text-align: center; border-collapse: collapse;">
				<thead>
					<tr><td colspan="8" style="text-align: left">회원 수 : ${usercount}</td></tr>
					<tr>
						<th style="width: 5%" id="allcheck">전체선택</th>
						<th style="width: 5%">번호</th>
						<th style="width: 20%">아이디</th>
						<th style="width: 10%">닉네임</th>
						<th style="width: 10%">이름</th>
						<th style="width: 5%">나이</th>
						<th style="width: 15%">가입일</th>
						<th style="width: 10%">후원목록보기</th>
					</tr>
				</thead>
				<tbody id="example-table-1">
					<c:if test="${usercount == 0}">
						<tr><td colspan="8">등록된 회원이 없습니다.</td></tr>
					</c:if>
					<c:if test="${usercount > 0}">
						<c:forEach var="u" items="${userlist}" varStatus="index">
							<c:set var="cate" value="${u.category}" />
							<tr style="text-align: center" class="user">
								<td><input type="checkbox"  name="idchks" value="${u.id}" /></td>
								<td>${userno}</td>
								<td>${u.id}</td>
								<td>${u.nic}</td>
								<td>${u.name}</td>
								<td>${u.age}</td>
								<td><fmt:formatDate value="${u.signdate}" pattern="yyyy- MM-dd"/></td>
								<td><a class="btn btn-primary btn-icon-split mybtn"
									style="width: 80px;"  onclick="event.cancelBubble=true;" data-toggle="modal" data-target="#spModal" >Click!</a><br>
								</td>
							</tr>
							<tr style="text-align: center">
								<td colspan="8">
									<div>
										<div class="border-left-primary">
											<div class="card-body">
												<div class="row no-gutters align-items-center">
													<div class="col">
														<img class="img-profile" src="../redo/img/avatar_4.png" style="width: 100px">
														<div class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1">
															${u.nic}
														</div>
														<div class="h5 mb-0 font-weight-bold text-gray-800">
															${u.name}
														</div>
													</div>
													<div class="col">
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															펀딩 진행 프로젝트</div>
														<div class="h5 mb-4 font-weight-bold text-gray-800">
															${u.mypjcnt}
														</div>
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															후원 프로젝트
														</div>
														<div class="h5 mb-4 font-weight-bold text-gray-800">
															${u.spcnt}
														</div>
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															총 후원 금액</div>
														<div class="h5 mb-0 font-weight-bold text-gray-800">${u.spsum}원</div>
													</div>
													<div class="card-body" style="width: 30%">
														<div class="chart-pie pt-4 pb-2">
															<canvas id="myuser${userno}"></canvas>
															<script type="text/javascript">
																var ctx = document.getElementById("myuser${userno}");
																var myPieChart = new Chart(
																		ctx,
																		{
																			type : 'bar',
																			data : {
																				labels : [ "게임", "공예", "영화·비디오", "패션", "만화",
																						"디자인", "음악", "테크놀로지" ],
																				datasets : [ {
																					data : ${cate},
																					backgroundColor : [ '#fc2626', '#fc5826',
																							'#fc9f26', '#fcea26', '#d1fc26',
																							'#aefc26', '#38fc26', '#26fc78' ],
																					hoverBackgroundColor : [ '#d90b0b',
																							'#de4516', '#e6880e', '#ebd80e',
																							'#b9e310', '#97e312', '#21db0f',
																							'#0de05e' ],
																					hoverBorderColor : "rgba(234, 236, 244, 1)",
																				} ],
																			},
																			options : {
																				maintainAspectRatio : false,
																				tooltips : {
																					backgroundColor : "rgb(255,255,255)",
																					bodyFontColor : "#858796",
																					borderColor : '#dddfeb',
																					borderWidth : 1,
																					xPadding : 5,
																					yPadding : 5,
																					displayColors : false,
																					caretPadding : 5,
																				},
																				legend : {
																					display : false
																				},
																				cutoutPercentage : 80,
																				scales : {
																					xAxes : [ {
																						gridLines : {
																							display : false,
																							drawBorder : false
																						},
																						ticks : {
																							maxTicksLimit : 8
																						},
																						maxBarThickness : 25,
																					} ],
																					yAxes : [ {
																						ticks : {
																							min : 0,
																							max : 10,
																							maxTicksLimit : 5,
																							padding : 10,
																							// Include a dollar sign in the ticks
																							callback : function(value, index,
																									values) {
																								return value + " 건";
																							}
																						},
																						gridLines : {
																							color : "rgb(234, 236, 244)",
																							zeroLineColor : "rgb(234, 236, 244)",
																							drawBorder : false,
																							borderDash : [ 2 ],
																							zeroLineBorderDash : [ 2 ]
																						}
																					} ],
																				},
																				tooltips : {
																					titleMarginBottom : 10,
																					titleFontColor : '#6e707e',
																					titleFontSize : 14,
																					backgroundColor : "rgb(255,255,255)",
																					bodyFontColor : "#858796",
																					borderColor : '#dddfeb',
																					borderWidth : 1,
																					xPadding : 15,
																					yPadding : 15,
																					displayColors : false,
																					caretPadding : 10,
																					callbacks : {
																						label : function(tooltipItem, chart) {
																							var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
																									|| '';
																							return datasetLabel
																									+ tooltipItem.yLabel + " 건";
																						}
																					}
																				},
																			},
																		});
															</script>
														</div>
														<c:set var="userno" value="${userno - 1}" />
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															후원 카테고리</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					<!-- 하단 페이징 부분 -->
					<tr>
						<td colspan="2"></td>
						<td colspan="5"><c:if test="${pageNum <= 1 }">
								<a class="btn btn-primary btn-icon-split" style="width: 50px;">이전</a>
							</c:if> <c:if test="${pageNum > 1 }">
								<a class="btn btn-primary btn-icon-split" style="width: 50px;"
									href="javascript:listdo(${pageNum - 1})"> 이전 </a>
							</c:if> <c:forEach var="a" begin="${startpage}" end="${endpage}">
								<c:if test="${a==pageNum}">
									<a class="btn btn-primary btn-icon-split" style="width: 50px;">
										${a} </a>
								</c:if>
								<c:if test="${a!=pageNum}">
									<a class="btn btn-light btn-icon-split" style="width: 50px;"
										href="javascript:listdo(${a})"> ${a} </a>
								</c:if>
							</c:forEach> <c:if test="${pageNum >= maxpage }">
								<a class="btn btn-primary btn-icon-split" style="width: 50px">
									다음 </a>
							</c:if> <c:if test="${pageNum < maxpage }">
								<a class="btn btn-primary btn-icon-split" style="width: 50px;"
									href="javascript:listdo(${pageNum + 1})"> 다음 </a>
							</c:if></td>
						<td colspan="1"><a class="btn btn-primary btn-icon-split"
							data-toggle="modal" data-target="#talModal" style="width: 80px;">회원탈퇴</a>
						</td>
					</tr>

				</tbody>
			</table>
			</form>
			<!-- 테이블 폼 및 유저 탈퇴 폼 끝-->
		</div>
		<!-- 컨텐트 끝 -->
		<!-- 탈퇴 모달 시작 -->
		<div class="modal fade" style="text-align: center;" id="talModal"
			tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">탈퇴</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body mt-3 mb-3">선택하신 회원을 탈퇴 하시겠습니까?</div>
					<div class="modal-footer">
						<button class="btn text-secondary" type="button" data-dismiss="modal">Cancel</button>
						<a class="btn text-primary" onclick="form.submit()">Secession</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 탈퇴 모달 끝 -->	
		
		<!-- sp 모달 시작 -->
	<div class="modal fade" style="text-align: center;" id="spModal"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document ">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel2">후원목록</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body mt-3 mb-3" id="spdata">
					
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>