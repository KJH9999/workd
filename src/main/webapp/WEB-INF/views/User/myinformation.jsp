<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/external/calendar/main.min.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/pages/home.css" />

</head>
<body>
	<%
		Object s_email = session.getAttribute("email");
		String email = (String) s_email;
	%>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="fixed">
		<a href="#header"><svg xmlns="http://www.w3.org/2000/svg"
				width="16" height="16" fill="currentColor"
				class="bi bi-chevron-double-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd"
					d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z" />
  <path fill-rule="evenodd"
					d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z" />
</svg></a>
	</div>

	<section class="content-wrapper">
		<article>
			<div class="title">
				<span>내 정보</span>
				<div class="menu ranking-menu">
					<ul>
						<li onclick="showCategory('total');">개인정보</li>
						<li onclick="showCategory('squats');">회원권 만료일</li>
						<li onclick="showCategory('benchPress');">내 랭킹</li>
						<li onclick="showCategory('deadLift');">내 게시글</li>
					</ul>
				</div>
			</div>

			<div class="ranking-wrapper">
				<div id="total" class="ranking-wrap">
					<div class="row" style="margin: auto;">
						<div class="col-xs-12">
							<table class="table table-bordered table-hover dt-responsive"
								style="margin-left: auto; margin-right: auto;">
								<caption class="text-center">
									<a href="modifyUser.do?email=<%=email%>">개인정보 수정 </a>
								</caption>

								<tbody>
									<c:forEach var="userlist" items="${userlist}"
										varStatus="status">
										<tr>
											<td>Email</td>
											<td>${userlist.email}</td>
										</tr>
										<tr>
											<td>Password</td>
											<td>${userlist.pw}</td>
										</tr>
										<tr>
											<td>Name</td>
											<td>${userlist.name}</td>
										</tr>
										<tr>
											<td>Number</td>
											<td>${userlist.number}</td>
										</tr>
										<tr>
											<td>Gender</td>
											<td>${userlist.gender}</td>
										</tr>
										<tr>
											<td>Birth Date</td>
											<td>${userlist.birth_date}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="ranking-wrapper">
				<div id="squats" class="ranking-wrap">
					<div class="row" style="margin: auto;">
						<div class="col-xs-12">
							<table
								summary="This table shows how to create responsive tables using Datatables' extended functionality"
								class="table table-bordered table-hover dt-responsive">
								
								<caption class="text-center">
									<a href="regist">등록하기 </a>
								</caption>
								<thead>
									<tr style="text-align: center">
										<th width="100">이름</th>
										<th width="100">개월</th>
										<th width="200">등록일</th>
										<th width="200">만료일</th>
										<th width="500">금액</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="registlist" items="${registlist}"
										varStatus="status">
										<tr style="text-align: center">
											<td>${registlist.name}</td>
											<td>${registlist.slct}개월</td>
											<td>${registlist.registday}</td>
											<td>${registlist.expiration}</td>
											<td>${registlist.pay}원</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>

			<div class="ranking-wrapper">
				<div id="benchPress" class="ranking-wrap"></div>
			</div>


			<div class="ranking-wrapper">
				<div id="deadLift" class="ranking-wrap">
					<div class="row" style="margin: auto;">
						<div class="col-xs-12">
							<table
								summary="This table shows how to create responsive tables using Datatables' extended functionality"
								class="table table-bordered table-hover dt-responsive">
								<thead>
									<tr style="text-align: center">
										<th width="130">글 번호</th>
										<th width="500">제목</th>
										<th width="130">조회수</th>
										<th width="350">시간</th>
										<th width="150">삭제</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="boardlist" items="${boardlist}">
										<tr style="text-align: center">
											<td>${boardlist.idx}</td>
											<td><a href="modifyBoard.do?idx=${boardlist.idx}">${boardlist.title}</a></td>
											<td>${boardlist.hit}</td>
											<td>${boardlist.at_time}</td>
											<td>
												<form action="delBoard">
													<input type="hidden" name="idx" value="${boardlist.idx}">
													<input type="hidden" name="email" value="<%=email%>">
													<input type="submit" value="Delete">
												</form>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</article>

	</section>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cfcbf165593fa61e13e3cdf2e4252f2b&libraries=services"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/external/calendar/locales-all.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/external/calendar/ko.js">
		
	</script>
	<script type="text/javascript" charset="euc-kr"
		src="${pageContext.request.contextPath}/js/external/calendar/main.min.js">
		
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/pages/home.js">
		
	</script>
</body>
</html>
