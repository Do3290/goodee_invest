<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Invest - AdminPage</title>

<!-- Custom fonts for this template-->
<link href="${path}/redo/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${path}/redo/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${path}/redo/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

<!-- font awesome content 이용 -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
	<!-- Core plugin JavaScript-->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"
		integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
		crossorigin="anonymous"></script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="<c:url value="/redo/js/sb-admin-2.min.js" />"></script>
	<!-- Page level plugins -->
	<script src="<c:url value="/redo/vendor/chart.js/Chart.min.js" />"></script>

	<!-- Page level custom scripts -->


	<script src="<c:url value="/redo/js/demo/datatables-demo.js" />"></script>
	<script src="<c:url value="/redo/vendor/datatables/jquery.dataTables.min.js" />"></script>
	<script src="<c:url value="/redo/vendor/datatables/dataTables.bootstrap4.min.js" />"></script>
<decorator:head/>
</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
			<!-- Sidebar - Brand -->
			<li>
				<a class="sidebar-brand-text mx-3 sidebar-brand d-flex align-items-center
				   justify-content-center" href="dash.do">
						INVEST<sub>amdin</sub>
				</a>
			</li>
	
			
			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			
			<!-- Nav Item - Dashboard -->
			<li class="nav-item">
				<a class="nav-link " href="dash.do">
					<i class="fas fa-chalkboard-teacher"></i>
					<span>대시보드</span>
				</a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">관리</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link collapsed" href="user.do">
					<i class="far fa-user"></i>
					<span>회원 관리</span>
				</a>
			</li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link collapsed" href="project.do">
					<i class="fas fa-table"></i>
					<span>프로젝트 관리</span>
				</a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">기타</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link collapsed" href="charts.do">
					<i class="fas fa-fw fa-chart-area"></i>
					<span>통계자료</span>
				</a>
			</li>

			<!-- Nav Item - Charts -->
			<li class="nav-item">
				<a class="nav-link" href="message.do">
					<i class="far fa-envelope"></i>
					<span>메세지</span>
				</a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Topbar -->
			<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">
					<div class="topbar-divider d-none d-sm-block"></div>
					<!-- Nav Item - User Information -->
					<li class="nav-item dropdown no-arrow">
						<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
						   role="button" data-toggle="dropdown" aria-haspopup="true"
						   aria-expanded="false">
						 <span class="mr-2 d-none d-lg-inline text-gray-600 small">
						 	${loginUser.nic}
						 </span>
						 <img class="img-profile" src="../redo/img/avatar_4.png">
					</a>
					<!-- Dropdown - User Information -->
						<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="../page/main.do">
								<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
								Invest
							</a>
							<a class="dropdown-item" href="#">
								<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
								Settings
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#" data-toggle="modal"
								data-target="#logoutModal"> <i
								class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
								Logout
							</a>
						</div>
					</li>
				</ul>

			</nav>
			<!-- End of Topbar -->

			<!-- decorator-body -->
			<decorator:body />
			<!-- End of decorator-body -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" style="text-align: center;" id="logoutModal"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Logout</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body mt-3 mb-3">선택하신 환경에서 로그아웃 하시겠습니까?</div>
				<div class="modal-footer">
					<button class="btn text-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn text-primary" href="../page/main.do">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<script src="<c:url value="/redo/js/demo/thisweek.js" />"></script>
	<script src="<c:url value="/redo/js/demo/lastweek.js" />"></script>
	<script src="<c:url value="/redo/js/demo/thisweek2.js" />"></script>
	<script src="<c:url value="/redo/js/demo/lastweek2.js" />"></script>
	
	<script src="<c:url value="/redo/js/demo/ageratio.js" />"></script>
	<script src="<c:url value="/redo/js/demo/sexratio.js" />"></script>
	<script src="<c:url value="/redo/js/demo/cateratio.js" />"></script>



	
	<decorator:getProperty property="page.local_script"></decorator:getProperty>
</body>
</html>
