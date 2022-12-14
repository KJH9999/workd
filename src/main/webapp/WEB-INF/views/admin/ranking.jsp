
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>workD관리자페이지</title>
<link rel="stylesheet"
	href="http://그누보드URL/js/font-awesome/css/font-awesome.min.css">
<!-- Custom fonts for this template-->
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/admin/all.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/admin/sb-admin-2.min.css" />
<style>
#wrapper {
	flex-direction: row-reverse !important;
}

.nav-item>.nav-link:nth-child(2n-1) {
	margin-bottom: 0 !important;
}

.nav-item>.nav-link:nth-child(2n) {
	margin-bottom: 16px !important;
}

main {
	padding: 20px;
}
.Menu {
	background-color: white !important;
	border-radius: 5px;
	box-shadow: 5px 5px 15px 0px #000;
	margin-bottom: 20px !important;
}

.nav-link {
	font-family: 'GimpoGothic';
	font-size: 15px;
	position: relative;
	top: 5px;
}

.nav-link:hover, .nav-link:focus {
	background-color: black;
	color: white !important;
}

.content-wrapper {
	width: 100%;
	display: flex;
	border-radius: 5px;
	background-color: white;
}

.wrapper {
	height: 500px;
	overflow-y: scroll;
}

.title {
	background-color: black;
}

.title .content-wrap>div {
	color: rgba(255, 255, 255, 1);
}

.content-wrap {
	display: flex;
	padding: 10px 0;
	flex: 1 0 auto;
}

.content-wrap>div {
	text-align: center;
}

.email {
	flex: 1 0 200px;
}

.squats {
	flex: 1 0 200px;
}

.squats {
	flex: 1 0 100px;
}

.benchPress {
	flex: 1 0 100px;
}

.deadLift {
	flex: 1 0 100px;
}

.total {
	flex: 1 0 100px;
}

</style>
</head>
<body id="page-top">
	<!-- Page Wrapper -->
	<div id="wrapper">

		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
										fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path
											d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
</svg>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="logout" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">관리자
									로그아웃</span>
						</a> <!-- Dropdown - User Information --></li>
					</ul>

				</nav>
			</div>
			<!-- End of Content Wrapper -->
			<main>
			<nav id="Menu" class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="#">Ranking</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link" href="#">전체보기
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item active"><a class="nav-link" href="#">수정하기
								<span class="sr-only">(current)</span>
						</a></li>
					</ul>
				</div>
			</nav>
			<div class="wrapper">
				<div class="content-wrapper title">
					<div class="content-wrap ">
						<div class="email">이메일</div>
						<div class="squats">스쿼트</div>
						<div class="benchPress">벤치프레스</div>
						<div class="deadLift">데드리프트</div>
						<div class="total">3대</div>
					</div>
				</div>
				<div class="content-wrapper">
					<div class="content-wrap ">
						<div class="email">이메일</div>
						<div class="squats">스쿼트</div>
						<div class="benchPress">벤치프레스</div>
						<div class="deadLift">데드리프트</div>
						<div class="total">3대</div>
					</div>
				</div>
				<div class="content-wrapper">
					<div class="content-wrap ">
						<div class="email">이메일</div>
						<div class="squats">스쿼트</div>
						<div class="benchPress">벤치프레스</div>
						<div class="deadLift">데드리프트</div>
						<div class="total">3대</div>
					</div>
				</div>
			</div>

			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
				crossorigin="anonymous"></script> </main>
			<%-- <%
				} else if (subPage == "userinfo" ) {
			%>
				
			<%
				} else if (subPage == "post") {
			%>
				<jsp:include page="">
			<%
				} else if (subPage == "inquire") {
			%>
				<jsp:include page="">
			<%
				} else if (subPage == "totalIncome") {
			%>
				<jsp:include page="">
			<%
				} else if (subPage == "registerList") {
			%>
				<jsp:include page="">
			<%
				}
			%> --%>

		</div>
		<jsp:include page="/WEB-INF/views/admin/adminleft.jsp" />


		<!-- <nav
			class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

			Sidebar Toggle (Topbar)
			<button id="sidebarToggleTop"
				class="btn btn-link d-md-none rounded-circle mr-3">
				<i class="fa fa-bars"></i>
			</button>

			Topbar Search
			<form
				class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control bg-light border-0 small"
						placeholder="Search for..." aria-label="Search"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</div>
				</div>
			</form>

			Topbar Navbar
			<ul class="navbar-nav ml-auto">

				Nav Item - Search Dropdown (Visible Only XS)

				</a>
	</div> -->
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/jquery.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/bundle.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/jquery.easing.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/sb-admin-2.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/Chart.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/chart-area-demo.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/admin/chart-pie-demo.js">
		
	</script>
</body>
</html>