<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/view/jspHeader.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function dash_btn1() {
		$('#h2name').text('이번 주 방문자');
		document.getElementById("dash_data1").style.display = "block";
		document.getElementById("dash_data2").style.display = "none";
	}
	function dash_btn2() {
		$('#h2name').text('지난 주 방문자');
		document.getElementById("dash_data1").style.display = "none";
		document.getElementById("dash_data2").style.display = "block";
	}
	function dash_btn3() {
		$('#h2name2').text('이번 주 방문자 그래프');
		document.getElementById("dash_data3").style.display = "block";
		document.getElementById("dash_data4").style.display = "none";
	}
	function dash_btn4() {
		$('#h2name2').text('지난 주 방문자 그래프');
		document.getElementById("dash_data3").style.display = "none";
		document.getElementById("dash_data4").style.display = "block";
	}
	function dash_btn5() {
		$('#h2name3').text('Invest 연령대');
		document.getElementById("dash_data5").style.display = "block";
		document.getElementById("dash_data6").style.display = "none";
	}
	function dash_btn6() {
		$('#h2name3').text('Invest 성별');
		document.getElementById("dash_data5").style.display = "none";
		document.getElementById("dash_data6").style.display = "block";

	}
	function listdo(page){
		document.searchform.pageNum.value=page;
		document.searchform.submit();
	}
</script>
</head>
<body>
	<!-- Main Content -->
	<div id="content">


		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Content Row -->
			<div class="row">

				<!-- 펀딩 진행 프로젝트 수 -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-primary shadow h-100 py-2">
						<div class="card-body" onclick="location.href='project.do'">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2" >
									<div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
										펀딩 진행 프로젝트</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${projecting}개</div>
								</div>
								<div class="col-auto" >
									<i class="fas fa-calendar fa-2x text-gray-300" ></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 승인 대기 프로젝트 수 -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-info shadow h-100 py-2">
						<div class="card-body" onclick="location.href='project.do'">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-info text-uppercase mb-1">
										승인 대기 프로젝트</div>
									<div class="row no-gutters align-items-center">
										<div class="col-auto">
											<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${project_rd}개</div>
										</div>
									</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- INVEST 수익 -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-success shadow h-100 py-2">
						<div class="card-body" onclick="location.href='charts.do'">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-success text-uppercase mb-1">
										INVEST 수익</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">${total_invest_m}원</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 문의 메세지 수 -->
				<div class="col-xl-3 col-md-6 mb-4">
					<div class="card border-left-warning shadow h-100 py-2">
						<div class="card-body" onclick="location.href='message.do'">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-warning text-uppercase mb-1">
										문의 메세지</div>
									<div class="h5 mb-0 font-weight-bold text-gray-800">준비중입니다</div>
								</div>
								<div class="col-auto">
									<i class="fas fa-envelope fa-fw fa-2x text-gray-300"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Content Row -->

			<div class="row">

				<!-- 방문자 그래프 -->
				<div class="col-xl-8 col-lg-7">
					<div class="card shadow mb-4" >
						<!-- Card Header - Dropdown -->
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name2">이번 주 방문자 그래프</h6>
							<div class="dropdown no-arrow">
								<a class="dropdown-toggle" href="#" role="button"
									id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
									class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">그래프 드롭다운:</div>
									<div class="dropdown-item" onclick="dash_btn3()">이번 주 그래프</div>
									<div class="dropdown-item"  onclick="dash_btn4()">지난 주 그래프</div>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="charts.do">통계 페이지 이동</a>
								</div>
							</div>
						</div>
					
						<div class="card-body row" >
							<!-- 이번주 방문자 그래프 -->
							<div class="chart-area" id="dash_data3">
								<canvas id="thisweek"></canvas>
								<script>
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								var ctx = document.getElementById("thisweek");
								var myLineChart = new Chart(ctx, {
								  type: 'line',
								  data: {
								    labels: ["일", "월", "화", "수", "목", "금", "토"],
								    datasets: [{
								      label: "방문자 수 ",
								      lineTension: 0,
								      backgroundColor: "rgba(78, 115, 223, 0.05)",
								      borderColor: "rgba(78, 115, 223, 1)",
								      pointBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointBorderColor: "rgba(78, 115, 223, 1)",
								      pointHoverRadius: 3,
								      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
								      pointBorderWidth: 2,
								      data: ${thisweek},
								    }],
								  },
								  options: {
								    maintainAspectRatio: false,
								    layout: {
								      padding: {
								        left: 10,
								        right: 25,
								        top: 25,
								        bottom: 0
								      }
								    },
								    scales: {
								      xAxes: [{
								        time: {
								          unit: 'date'
								        },
								        gridLines: {
								          display: false,
								          drawBorder: false
								        },
								        ticks: {
								          maxTicksLimit: 7
								        }
								      }],
								      yAxes: [{
								        ticks: {
								          maxTicksLimit: 10,
								          // Include a dollar sign in the ticks
								          callback: function(value, index, values) {
								            return value+'명';
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
								    legend: {
								      display: false
								    },
								    tooltips: {
								      backgroundColor: "rgb(255,255,255)",
								      bodyFontColor: "#858796",
								      titleMarginBottom: 10,
								      titleFontColor: '#6e707e',
								      titleFontSize: 14,
								      borderColor: '#dddfeb',
								      borderWidth: 1,
								      xPadding: 15,
								      yPadding: 15,
								      displayColors: false,
								      intersect: false,
								      mode: 'index',
								      caretPadding: 10

								    }
								  }
								});

								</script>
							</div>
							<!-- 지난주 방문자 그래프 -->
							<div class="chart-area" id="dash_data4" style="display:none;">
								<canvas id="lastweek"></canvas>
								<script>
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								var ctx = document.getElementById("lastweek");
								var myLineChart = new Chart(ctx, {
								  type: 'line',
								  data: {
								    labels: ["일", "월", "화", "수", "목", "금", "토"],
								    datasets: [{
								      label: "방문자 수 ",
								      lineTension: 0,
								      backgroundColor: "rgba(78, 115, 223, 0.05)",
								      borderColor: "rgba(78, 115, 223, 1)",
								      pointBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointBorderColor: "rgba(78, 115, 223, 1)",
								      pointHoverRadius: 3,
								      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
								      pointBorderWidth: 2,
								      data: ${lastweek},
								    }],
								  },
								  options: {
								    maintainAspectRatio: false,
								    layout: {
								      padding: {
								        left: 10,
								        right: 25,
								        top: 25,
								        bottom: 0
								      }
								    },
								    scales: {
								      xAxes: [{
								        time: {
								          unit: 'date'
								        },
								        gridLines: {
								          display: false,
								          drawBorder: false
								        },
								        ticks: {
								          maxTicksLimit: 7
								        }
								      }],
								      yAxes: [{
								        ticks: {
								          maxTicksLimit: 10,
								          // Include a dollar sign in the ticks
								          callback: function(value, index, values) {
								            return value+'명';
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
								    legend: {
								      display: false
								    },
								    tooltips: {
								      backgroundColor: "rgb(255,255,255)",
								      bodyFontColor: "#858796",
								      titleMarginBottom: 10,
								      titleFontColor: '#6e707e',
								      titleFontSize: 14,
								      borderColor: '#dddfeb',
								      borderWidth: 1,
								      xPadding: 15,
								      yPadding: 15,
								      displayColors: false,
								      intersect: false,
								      mode: 'index',
								      caretPadding: 10

								    }
								  }
								});

								</script>
							</div>
						</div>
					</div>
				</div>

				<!--  방문자 수 표 -->
				<div class="col-xl-4 col-lg-5">
					<div class="card shadow mb-4">
						<!-- Card Header - Dropdown -->
						<div
							class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name">이번 주 방문자</h6>
							<div class="dropdown no-arrow">
								<a class="dropdown-toggle" href="#" role="button"
									id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false"> <i
									class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
								</a>
								<div
									class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">방문자 드롭다운:</div>
									<div class="dropdown-item" onclick="dash_btn1()">이번 주 방문자</div>
									<div class="dropdown-item"  onclick="dash_btn2()">지난 주 방문자</div>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="charts.do">통계 페이지 이동</a>
								</div>
							</div>
						</div>
						<!-- Card Body -->
						<div class="card-body" id="dash_data1">
							<h4 class="small font-weight-bold">오늘 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${todaycnt}</div>
							<h4 class="small font-weight-bold">어제 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${ystdaycnt}</div>
							<h4 class="small font-weight-bold">이번 주 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${thisweekcnt}</div>
							<h4 class="small font-weight-bold">이번 주 신규 회원 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${this_sign_cnt}</div>
							<h4 class="small font-weight-bold">* 일주일치 데이터만 보관합니다.</h4>
							<h4 class="small font-weight-bold">* 한글이 씨부레 기억이안나</h4>
						</div>
						<div class="card-body" id="dash_data2" style="display:none;">
							<h4 class="small font-weight-bold">지난 주 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${lastweekcnt}</div>
							<h4 class="small font-weight-bold">지난 주 신규 회원 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${last_sign_cnt}</div>
							<h4 class="small font-weight-bold">* 일주일치 데이터만 보관합니다.</h4>
							<h4 class="small font-weight-bold">* 한글이 씨부레 기억이안나</h4>
						</div>
					</div>
				</div>
			</div>

			<!-- Content Row -->
			<div class="row">

				<!-- Content Column -->
				<div class="col-lg-6 mb-4">

					<!-- 카테고리 별 프로젝트 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">카테고리 별 프로젝트</h6>
						</div>
						<!-- 카테고리 -->
						<div class="card-body">
							<h4 class="small font-weight-bold">
								게임 <span class="float-right">${cate0}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do1" role="progressbar"
									style="width: ${cate0}%" aria-valuenow="${cate0}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								공예 <span class="float-right">${cate1}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do2" role="progressbar"
									style="width: ${cate1}%" aria-valuenow="${cate1}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								영화·비디오 <span class="float-right">${cate2}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do3" role="progressbar"
									style="width: ${cate2}%" aria-valuenow="${cate2}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								패션 <span class="float-right">${cate3}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do4" role="progressbar"
									style="width: ${cate3}%" aria-valuenow="${cate3}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								만화 <span class="float-right">${cate4}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do5" role="progressbar"
									style="width: ${cate4}%" aria-valuenow="${cate4}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								디자인 <span class="float-right">${cate5}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do6" role="progressbar"
									style="width: ${cate5}%" aria-valuenow="${cate5}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								음악 <span class="float-right">${cate6}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do7" role="progressbar"
									style="width: ${cate6}%" aria-valuenow="${cate6}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>

							<h4 class="small font-weight-bold">
								테크놀로지 <span class="float-right">${cate7}개</span>
							</h4>
							<div class="progress mb-4">
								<div class="progress-bar bg-do8" role="progressbar"
									style="width: ${cate7}%" aria-valuenow="${cate7}" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
							<h4 class="small font-weight-bold">* 100개 기준 </h4>

						</div>
					</div>
				</div>

				<div class="col-lg-6 mb-4">

					<!-- Invest 연령대 성비  그래프 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name3">Invest 연령대</h6>
							<div class="dropdown no-arrow">
								<a class="dropdown-toggle" href="#" role="button"
									id="dropdownMenuLink" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
								</a>
								<div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
									aria-labelledby="dropdownMenuLink">
									<div class="dropdown-header">그래프 드롭다운:</div>
									<div class="dropdown-item" onclick="dash_btn5()">연령대 그래프</div>
									<div class="dropdown-item"  onclick="dash_btn6()">성별 그래프</div>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="charts.do">통계 페이지 이동</a>
								</div>
							</div>
						</div>
						<!-- 연령대 그래프 -->
						<div class="card-body" id="dash_data5">
							<div class="chart-pie pt-4 pb-2">
								<canvas id="ageratio"></canvas>
								<script>
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								var ctx = document.getElementById("ageratio");
								var myPieChart = new Chart(ctx, {
								  type: 'doughnut',
								  data: {
								    labels: ["10대", "20대", "30대","40대","50대","60대"],
								    datasets: [{
								      data: ${arrAge},
								      backgroundColor: ['#26bcfc', '#267ffc', '#265ffc','#262afc','#5426fc','#b526fc'],
								      hoverBackgroundColor: ['#0e95cf', '#1566d6', '#1444c9','#1014c9','#3b14c9','#880ac7'],
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
							<!-- 연령대 라벨 -->
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
						</div>
						<!-- 성비 그래프 -->
						<div class="card-body" id="dash_data6" style="display:none;">
							<div class="chart-pie pt-4 pb-2">
								<canvas id="sexratio"></canvas>
								<script>
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								var ctx = document.getElementById("sexratio");
								var myPieChart = new Chart(ctx, {
								  type: 'bar',
								  data: {
								    labels: ["남성", "여성"],
								    datasets: [{
								      data: ${arrSex},
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
							<!-- 성비 라벨 -->
							<div class="mt-4 text-center small">
								<span class="mr-2">
									<i class="fas fa-circle text-do1"></i>
									남성
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do3"></i>
									여성
								</span>
							</div>
						</div>
					</div>
					<!-- 개발자의 말 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-do1">
							Developer comment</h6>
						</div>
						<div class="card-body">
							<p>관리자 변경, 다양한 통계자료, 통계파일 생성, 메세지 등 추가기능 개발중에 있습니다.</p>
							<p class="mb-0">해당 개발 관련사항 문의시 관리자에 연락바랍니다.</p>
						</div>
					</div>

				</div>
			</div>

		</div>
		<!-- /.container-fluid -->

	</div>

</body>
</html>