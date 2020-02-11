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
		var num = $(this).attr('aaa');
		
		$.ajax({
			url:"pjview.do",
	        type:'POST',
	        data: {"num" : num},
	        success:function(data){
	        	$('#pjdata').html(data);
				$('#pjModal').modal('toggle');
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
function mySubmit(index) {
    if (index == 1) {
      document.form2.action='approve.do';
    }
    if (index == 2) {
      document.form2.action='cancel.do';
    }
    document.form2.submit();
}


</script>
</head>
<body>
	<div class="card mb-3">
		<div class="card-body">
			<form action="	" method="post" name="sf">
				<input type="hidden" name="pageNum" value="1">
				<table class="table" width="100%" cellspacing="0" style="text-align: center">
					<tr>
						<td style="border-width: 0px;">
							<div class="form-group row" style="float: right; width: 50%;">
								<select name="st" class="custom-select custom-select-sm mr-2" style="width: 10%; visibility: hidden;">
								</select>
								<select name="searchtype"
									class="custom-select custom-select-sm mr-2" style="width: 10%;">
									<option value="">선택</option>
									<option value="title">닉네임</option>
									<option value="id">아이디</option>
									<option value="content">이름</option>
									<option value="title,name">나이</option>
								</select>
								<script>
									document.sf.searchtype.value = "${param.searchtype}";
								</script>
								<input class="form-control form-control-sm  mr-2" type="text"
									name="searchcontent" style="width: 50%" value="${param.searchcontent}"> <input
									type="submit" class=" btn  btn-sm btn-primary btn-user mr-2"
									style="width: 10%;" value="검색">
							</div>
						</td>
					</tr>
				</table>
			</form>
			<form  method="post" name="form2">
			<table class="table" width="100%" cellspacing="0"
				style="text-align: center">
				<thead>
					<tr>
						<td colspan="8" style="text-align: left">프로젝트 수 : ${projectcnt}</td>
						</td>
					</tr>
					<tr>
						<th style="width: 5%" id="allcheck">전체선택</th>
						<th style="width: 5%">번호</th>
						<th style="width: 10%">아이디</th>
						<th style="width: 20%">제목</th>
						<th style="width: 10%">진행상태</th>
						<th style="width: 5%">달성률</th>
						<th style="width: 5%">마감일</th>
						<th style="width: 10%">상세보기</th>
					</tr>
				</thead>
				<tbody id="example-table-1">
					<c:if test="${projectcnt == 0}">
						<tr>
							<td colspan="8">등록된 프로젝트가 없습니다.</td>
						</tr>
					</c:if>
					<c:if test="${projectcnt > 0}">
						<c:forEach var="p" items="${projectlist}">
						<c:set var="spsex" value="${p.sp_avg_sex}" />
						<c:set var="spage" value="${p.sp_avg_age}" />
							<tr style="text-align: center" class="project">
								<td><input type="checkbox"   onclick="event.cancelBubble=true" name="idchks" value="${p.project_num}"/></td>
								<td>${projectno}</td>
								<td>${p.id}</td>
								<td>${p.subject}</td>
								<td>${p.state}</td>
								<c:set var= "ratio" value="${p.goal}"/>
								<td>${ratio}</td>
								<td>${p.deadline}</td>
								<td><a class="btn btn-primary btn-icon-split mybtn"
									style="width: 80px;"   onclick="event.cancelBubble=true;" data-toggle="modal" data-target="#pjModal"
									aaa="${p.project_num}">Click!</a></td>
							</tr>
							<tr style="text-align: center"">
								<td colspan="8">
									<div>
										<div class="border-left-primary">
											<div class="card-body">
												<div class="row no-gutters align-items-center">
													<div class="col">
														<div class="h5 mb-0 font-weight-bold text-gray-800">
															${p.subject}
														</div>
														<div class="h5 mb-0 font-weight-bold text-gray-800">
															${p.category}
														</div>
														<img class="img-profile" src="../redo/img/avatar_4.png"
															style="width: 50px">
														<div class="text-xs font-weight-bold text-gray-800 text-uppercase mb-1">
															${p.p_nic}
														</div>
													</div>
													<div class="col">
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															펀딩 달성률
														</div>
														<div class="h5 mb-4 font-weight-bold text-gray-800">
															${p.spsum/p.goal*100}%
														</div>
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															후원자 수
														</div>
														<div class="h5 mb-4 font-weight-bold text-gray-800">
															${p.spcnt}명
														</div>
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															목표금
														</div>
														<div class="h5 mb-4 font-weight-bold text-gray-800">
															${p.goal}원
														</div>
														<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															총 후원 금액
														</div>
														<div class="h5 mb-4 font-weight-bold text-gray-800">
															${p.spsum}원
														</div>
													</div>
													<div class="card-body" style="width: 15%">
														<div class="chart-pie pt-4 pb-2">
															<canvas id="myprojectsex${projectno}"></canvas>
															<script>
															var ctx = document.getElementById("myprojectsex${projectno}");
															var myPieChart = new Chart(ctx,
																	{
																  type: 'bar',
																  data: {
																    labels: ["남성", "여성"],
																    datasets: [{
																      data: ${spsex},
																      backgroundColor: ['#fc2626', '#fc9f26'],
																      hoverBackgroundColor: [' #d90b0b', '#e6880e'],
																      hoverBorderColor: "rgba(234, 236, 244, 1)",
																    }],
																  },
																  options: {
																    maintainAspectRatio: false,
																    tooltips: {
																      backgroundColor: "rgb(255,255,255)",
																      bodyFontColor: "#858796",
																      borderColor: '#dddfeb',
																      borderWidth: 1,
																      xPadding: 15,
																      yPadding: 15,
																      displayColors: false,
																      caretPadding: 10,
																    },
																    legend: {
																      display: false
																    },
																    cutoutPercentage: 80,
																    scales: {
																        xAxes: [{
																          gridLines: {
																            display: false,
																            drawBorder: false
																          },
																          ticks: {
																            maxTicksLimit: 6
																          },
																          maxBarThickness: 25,
																        }],
																        yAxes: [{
																          ticks: {
																            min: 0,
																            max: 100,
																            maxTicksLimit: 5,
																            padding: 10,
																            // Include a dollar sign in the ticks
																            callback: function(value, index, values) {
																              return  value+" 명";
																            }
																          },
																          gridLines: {
																            color: "rgb(234, 236, 244)",
																            zeroLineColor: "rgb(234, 236, 244)",
																            drawBorder: false,
																            borderDash: [2],
																            zeroLineBorderDash: [2]
																          }
																        }],
																      },
																      tooltips: {
																          titleMarginBottom: 10,
																          titleFontColor: '#6e707e',
																          titleFontSize: 14,
																          backgroundColor: "rgb(255,255,255)",
																          bodyFontColor: "#858796",
																          borderColor: '#dddfeb',
																          borderWidth: 1,
																          xPadding: 15,
																          yPadding: 15,
																          displayColors: false,
																          caretPadding: 10,
																          callbacks: {
																            label: function(tooltipItem, chart) {
																              var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
																              return datasetLabel + tooltipItem.yLabel+" 명";
																            }
																          }
																        },
																  },
																});
															</script>
														</div>
														<div
															class="text-xs font-weight-bold text-primary text-uppercase mb-1">
															후원자 성비</div>
													</div>
													<div class="card-body" style="width: 15%">
														<div class="chart-pie pt-4 pb-2">
															<canvas id="myprojectage${projectno}"></canvas>
															<script>
															var ctx2 = document.getElementById("myprojectage${projectno}");
															var myPieChart2 = new Chart(ctx2,
																	{
																  type: 'doughnut',
																  data: {
																    labels: ["10대", "20대", "30대","40대","50대","60대"],
																    datasets: [{
																      data: ${spage},
																      backgroundColor: ['#26bcfc','#267ffc','#265ffc','#262afc','#5426fc','#b526fc'],
																      hoverBackgroundColor: ['#0e95cf','#1566d6','#1444c9','#1014c9','#3b14c9','#880ac7'],
																      hoverBorderColor: "rgba(234, 236, 244, 1)",
																    }],
																  },
																  options: {
																    maintainAspectRatio: false,
																    tooltips: {
																      backgroundColor: "rgb(255,255,255)",
																      bodyFontColor: "#858796",
																      borderColor: '#dddfeb',
																      borderWidth: 1,
																      xPadding: 15,
																      yPadding: 15,
																      displayColors: false,
																      caretPadding: 10,
																    },
																    legend: {
																      display: false
																    },
																    cutoutPercentage: 80,
																  },
																});
															</script>
														</div>
														<div class="mt-4 text-center small">
															<span class="mr-2">
																<i class="fas fa-circle text-do11"></i>
																10대
															</span>
															<span class="mr-2">
																<i class="fas fa-circle text-do12"></i>
																20대
															</span>
															<span class="mr-2">
																<i class="fas fa-circle text-do13"></i>
																30대
															</span>
															<span class="mr-2">
																<i class="fas fa-circle text-do14"></i>
																40대
															</span>
															<span class="mr-2">
																<i class="fas fa-circle text-do15"></i>
																50대
															</span>
															<span class="mr-2">
																<i class="fas fa-circle text-do16"></i>
																60대
															</span>
														</div>
														<div class="text-xs font-weight-bold text-primary text-uppercase mt-1 mb-1">
															후원자 연령대
														</div>
														<c:set var="projectno" value="${projectno - 1}" />
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
							data-toggle="modal" data-target="#approveModal" style="width: 80px;">승인</a>
							<a class="btn btn-primary btn-icon-split" data-toggle="modal"
							data-target="#cancelModal" style="width: 80px;">취소</a></td>
					</tr>
					<%-- </c:if> --%>

				</tbody>
			</table>
			</form>
		</div>
		<!-- 승인 모달 시작 -->
		<div class="modal fade" style="text-align: center;" id="approveModal"
			tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">승인</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body mt-3 mb-3">선택하신 프로젝트을 승인 하시겠습니까?</div>
					<div class="modal-footer">
						<button class="btn text-secondary" type="button" data-dismiss="modal">Cancel</button>
						<a class="btn text-primary" onclick="mySubmit(1)">Approve</a>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" style="text-align: center;" id="cancelModal"
			tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2"
			aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel2">취소</h5>
						<button class="close" type="button" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body mt-3 mb-3">선택하신 프로젝트을 삭제 하시겠습니까?</div>
					<div class="modal-footer">
						<button class="btn text-secondary" type="button" data-dismiss="modal">Cancel</button>
						<a class="btn text-primary" onclick="mySubmit(2)">Delete</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 승인 모달 끝 -->	
		<div class="modal fade" style="text-align: center;" id="pjModal"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel3"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document ">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel3">프로젝트 정보</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body mt-3 mb-3" id="pjdata">
					
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>