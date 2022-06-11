<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- Custom fonts for this template-->

<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/admin/all.min.css" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/admin/sb-admin-2.min.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a herf="adminmain"
			class="sidebar-brand d-flex align-items-center justify-content-center"
			href="adminmain.jsp">
			<div class="sidebar-brand-icon rotate-n-15">
				<i class="fas fa-laugh-wink"></i>
			</div>
			<div class="sidebar-brand-text mx-3">workd</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">


		<!-- Divider -->
		<hr class="sidebar-divider">


		<!-- Heading -->
		<div class="sidebar-heading">회원</div>

		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>정보관리 </span>
		</a></li>


		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>랭킹 </span>
		</a></li>

		<hr class="sidebar-divider my-0">


		<!-- Divider -->
		<hr class="sidebar-divider">


		<!-- Heading -->
		<div class="sidebar-heading">게시글관리</div>

		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>게시판 </span>
		</a></li>


		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>문의사항 </span>
		</a></li>

		<hr class="sidebar-divider my-0">


		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">수익</div>

		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>총 수익 </span>
		</a></li>




		<li class="nav-item"><a class="nav-link" href="charts.html">
				<i class="fas fa-fw fa-chart-area"></i> <span>등록내역 </span>
		</a></li>
</body>
</html>