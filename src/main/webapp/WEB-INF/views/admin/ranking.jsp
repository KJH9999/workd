<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<style>
nav {
	background-color: white !important;
	border-radius: 5px;
	box-shadow: 5px 5px 15px 0px #000;
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
	margin-bottom: 20px;
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
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
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
		crossorigin="anonymous"></script>
</body>
</html>