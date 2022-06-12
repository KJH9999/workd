
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
.navbar-brand {
	font-weight: bold;
}

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
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.idx {
	flex: 1 0 100px;
}

.email {
	flex: 1 0 200px;
}

.question {
	flex: 1 0 200px;
}

.answer {
	flex: 1 0 200px;
}

.time {
	flex: 1 0 100px;
}

#nullInquire {
	display: none;
}

.answerForm {
	display: none;
	width: 100%;
	height: 200px;
}

.content-wrapper {
	display: block;
	cursor: pointer;
}

.answerTextArea {
	flex: 1 0 auto;
	padding : 10px;
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
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<a class="navbar-brand" href="#">문의하기</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li id="allSelector" onclick="showInquire(event, 'allInquire')"
							class="nav-item active" style="background-color: black;"><a
							class="nav-link" href="#" style="color: white;">전체보기 <span
								class="sr-only">(current)</span>
						</a></li>
						<li id="nullSelector" onclick="showInquire(event, 'nullInquire')"
							class="nav-item active"><a class="nav-link" href="#">미답변목록
								<span class="sr-only">(current)</span>
						</a></li>
					</ul>
				</div>
			</nav>
			<div class="wrapper">
				<div class="content-wrapper title">
					<div class="content-wrap ">
						<div class="idx">번호</div>
						<div class="email">이메일</div>
						<div class="question">질문</div>
						<div class="answer">답변</div>
						<div class="time">시간</div>
					</div>
				</div>

				<c:forEach var="inquireList" items="${inquireList}"
					varStatus="status">
					<div id="allInquire" class="content-wrapper">
						<div class="content-wrap" onclick="showAnswerForm('all', '${inquireList.idx}', '${status.end}');">
							<div class="idx">${inquireList.idx}</div>
							<div class="email">${inquireList.email}</div>
							<div class="question">${inquireList.question}</div>
							<div class="answer">${inquireList.answer == NULL ? "답변이 아직 되지 않았습니다." : inquireList.answer}</div>
							<div class="time">${inquireList.at_time}</div>
						</div>
						<form class="answerForm" action="updateInquireAnswer"
							 id="all${inquireList.idx}" method="post">
							<input type="hidden" name="idx" value="${inquireList.idx}" />
							<textarea class="answerTextArea" name="answer">${inquireList.answer}</textarea>
							<button type="submit">제출하기</button>
						</form>
					</div>
				</c:forEach>

				<c:forEach var="nullInquireList" items="${nullInquireList}"
					varStatus="status">
					<div id="nullInquire" class="content-wrapper">
						<div class="content-wrap" onclick="showAnswerForm('null', '${nullInquireList.idx}', '${status.end}');">
							<div class="idx">${nullInquireList.idx}</div>
							<div class="email">${nullInquireList.email}</div>
							<div class="question">${nullInquireList.question}</div>
							<div class="answer">${nullInquireList.answer == NULL ? "답변이 아직 되지 않았습니다." : inquireList.answer}</div>
							<div class="time">${nullInquireList.at_time}</div>
						</div>
					</div>
					<form class="answerForm" action="updateInquireAnswer"
						 id="null${nullInquireList.idx}" method="post">
						<input type="hidden" name="idx" value="${nullInquireList.idx}" />
						<textarea class="answerTextArea" name="answer">${nullInquireList.answer}</textarea>
						<button type="submit">제출하기</button>
					</form>
				</c:forEach>
			</div>

			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
				crossorigin="anonymous"></script> </main>
		</div>
		<jsp:include page="/WEB-INF/views/admin/adminleft.jsp" />
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>
	<script>
		function showInquire(event, id) {
			const selectors = ["allSelector", "nullSelector"];
			const elements = ["allInquire", "nullInquire"];
			elements.map(function(elementId, index){
				const el = document.getElementById(elementId);
				const st = document.getElementById(selectors[index]);
				if(elementId === id) {
					el.style.display = "flex";
					st.children[0].style.color = "white";
					st.style.backgroundColor = "black";
				} else {
					el.style.display = "none";
					st.children[0].style.color = "black";
					st.style.backgroundColor = "white";
				}
				
			})
		}
		
		function showAnswerForm(type, idx, end) {
			let ele = document.getElementById(type+idx);
			ele.style.display = ele.style.display == "flex" ? "none" : "flex";
		}
	</script>
</body>
</html>