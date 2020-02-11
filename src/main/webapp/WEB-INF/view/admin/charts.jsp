<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<!-- Main Content -->
	<div id="content">


		<!-- Begin Page Content -->
		<div class="container-fluid">

			<!-- Content Row -->

			<div class="row">
				<!-- this week -->
				<div class="col-xl-6" style="width:100%" >
					<div class="card shadow mb-4" >
						<!-- Card Header - Dropdown -->
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name2">이번 주 방문자 그래프</h6>
						</div>
						<!-- Card Body -->
						<div class="card-body row">
							<div class="chart-area" id="dash_data3"  style="width:60%">
								<canvas id="thisweek2"></canvas>
								<script type="text/javascript">
								// Set new default font family and font color to mimic Bootstrap's default styling
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								// Area Chart Example
								var ctx = document.getElementById("thisweek2");
								var myLineChart = new Chart(ctx, {
								  type: 'bar',
								  data: {
								    labels: ["일", "월", "화", "수", "목", "금", "토"],
								    datasets: [{
								      label: "방문자 수 ",
								      backgroundColor: ['#26fcfc', '#26fcae','#26fc78','#38fc26','#aefc26','#d1fc26','#fcea26'],
								      lineTension: 0,
								      borderColor: "rgba(78, 115, 223, 1)",
								      pointBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointBorderColor: "rgba(78, 115, 223, 1)",
								      pointHoverRadius: 3,
								      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
								      pointBorderWidth: 2,
								      data: ${thisweek2},
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
						<div style="width:40%">
							<h4 class="small font-weight-bold">오늘 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${todaycnt2}</div>
							<h4 class="small font-weight-bold">어제 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${ystdaycnt2}</div>
							<h4 class="small font-weight-bold">이번 주 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${thisweekcnt2}</div>
							<h4 class="small font-weight-bold">이번 주 신규 회원 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${this_sign_cnt2}</div>
							<h4 class="small font-weight-bold">* 일주일치 데이터만 보관합니다.</h4>
							<h4 class="small font-weight-bold">* 한글이 씨부레 기억이안나</h4>
						</div>
						</div>
					</div>
				</div>
				
				<!-- last week -->
				<div class="col-xl-6" style="width:100%" >
					<div class="card shadow mb-4" >
						<!-- Card Header - Dropdown -->
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name2">지난 주 방문자 그래프</h6>
						</div>
						<!-- Card Body -->
						<div class="card-body row">
							<div class="chart-area" id="dash_data3"  style="width:60%">
								<canvas id="lastweek2"></canvas>
								<script>
								// Set new default font family and font color to mimic Bootstrap's default styling
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								// Area Chart Example
								var ctx = document.getElementById("lastweek2");
								var myLineChart = new Chart(ctx, {
								  type: 'bar',
								  data: {
								    labels: ["월", "화", "수", "목", "금", "토", "일"],
								    datasets: [{
								      label: "방문자 수 ",
								      backgroundColor: ['#5426fc', '#262afc','#265ffc','#267ffc','#26bcfc','#26fcfc','#26fcae'],
								      lineTension: 0,
								      borderColor: "rgba(78, 115, 223, 1)",
								      pointBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointBorderColor: "rgba(78, 115, 223, 1)",
								      pointHoverRadius: 3,
								      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
								      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
								      pointBorderWidth: 2,
								      data: ${lastweek2},
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
						<div style="width:40%">
							<h4 class="small font-weight-bold">지난 주 방문자 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${lastweekcnt2}</div>
							<h4 class="small font-weight-bold">지난 주 신규 회원 수</h4>
							<div class=" h5 mt-1 mb-3 font-weight-bold text-gray-800">${last_sign_cnt2}</div>
							<h4 class="small font-weight-bold">* 일주일치 데이터만 보관합니다.</h4>
							<h4 class="small font-weight-bold">* 한글이 씨부레 기억이안나</h4>
						</div>
						</div>
					</div>
				</div>


			</div>


			<!-- Content Row -->
			<div class="row">

				<!-- Content Column -->
				<div class="col-lg-5 mb-4">

					<!-- Project Card Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">카테고리 별 프로젝트</h6>
						</div>
						<div class="card-body" id="dash_data5">
							<div class="chart-pie pt-4 pb-2">
								<canvas id="cateratio"></canvas>
								<script>
								// Set new default font family and font color to mimic Bootstrap's default styling
								Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
								Chart.defaults.global.defaultFontColor = '#858796';

								// Pie Chart Example
								var ctx = document.getElementById("cateratio");
								var myPieChart = new Chart(ctx, {
								  type: 'doughnut',
								  data: {
								    labels: ["게임", "공예", "영화·비디오","패션","만화","디자인","음악","테크놀로지"],
								    datasets: [{
								      data: ${arrCate},
								      backgroundColor: ['#fc2626', '#fc5826', '#fc9f26','#fcea26','#d1fc26','#aefc26','#38fc26','#26fc78'],
								      hoverBackgroundColor: ['#d90b0b','#de4516', '#e6880e', '#ebd80e','#b9e310','#97e312','#21db0f','#0de05e'],
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
									<i class="fas fa-circle text-do1"></i>
									게임
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do2"></i>
									공예
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do3"></i>
									영화·비디오
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do4"></i>
									패션
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do5"></i>
									만화
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do6"></i>
									디자인
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do7"></i>
									음악
								</span>
								<span class="mr-2">
									<i class="fas fa-circle text-do8"></i>
									테크노로지
								</span>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 mb-4">

					<!-- Illustrations -->
					<div class="card shadow mb-4">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name3">Invest 연령대</h6>
						</div>
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
								      data: ${arrAge2},
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
					</div>
				</div>
				
				<div class="col-lg-3 mb-4">
					<!-- Illustrations -->
					<div class="card shadow mb-4">
						<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
							<h6 class="m-0 font-weight-bold text-primary" id="h2name3">Invest 성비</h6>
						</div>
						<div class="card-body" id="dash_data6">
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
								      data: ${arrSex2},
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
				</div>
			</div>



		</div>
		<!-- /.container-fluid -->

	</div>

</body>
</html>