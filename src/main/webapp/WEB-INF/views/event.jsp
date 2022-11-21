<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common/common.jsp"%>
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
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<main>
	<div class="fixed"><a href="#header"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-up" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M7.646 2.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 3.707 2.354 9.354a.5.5 0 1 1-.708-.708l6-6z"/>
  <path fill-rule="evenodd" d="M7.646 6.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1-.708.708L8 7.707l-5.646 5.647a.5.5 0 0 1-.708-.708l6-6z"/>
</svg></a></div>
	
	<section class="content-wrapper">
		<article>
			<div class="title">
				<span>Event</span>
				<div class="detail">
				</div>
			</div>
			<div class="event-wrapper">
				<a href="#event1">
					<div class="event-wrap">
						<div class="event-content">
							<div class="event-date">
								<span>05/25(목) ~ 12/31(토)</span>
							</div>
							<div class="event-title">
								<span>신나게 운동할래요!</span>
							</div>
							<div class="event-subTitle">
								<span>회원님들만의 음악 플레이리스트를 틀어드려요!</span>
							</div>
							<div class="event-category">
								<span>Music</span>
							</div>
						</div>
						<div class="event-image">
							<img
								src="${pageContext.request.contextPath}/image/events/MusicStation.jpg" />
						</div>
					</div>
				</a>
			</div>
			<div class="event-wrapper">
				<a href="#event2">
					<div class="event-wrap">
						<div class="event-content">
							<div class="event-date">
								<span>05/03(화) ~ 12/31(토)</span>
							</div>
							<div class="event-title">
								<span>야외에서<br />운동 할래요!
								</span>
							</div>
							<div class="event-subTitle">
								<span>지루한 실내운동말고 야외에서 운동해요.</span>
							</div>
							<div class="event-category">
								<span>Exercise</span>
							</div>
						</div>
						<div class="event-image">
							<img
								src="${pageContext.request.contextPath}/image/events/PlayGround.jpg" />
						</div>
					</div>
				</a>
			</div>
			<div class="event-wrapper">
				<a href="#event3">
					<div class="event-wrap">
						<div class="event-content">
							<div class="event-date">
								<span>04/13(수) ~ 10/03(월)</span>
							</div>
							<div class="event-title">
								<span>식단 관리를 하고 싶어요!</span>
							</div>
							<div class="event-subTitle">
								<span>식단 조절이 어려운 분들을 위해<br />하나하나 맞춰드려요.
								</span>
							</div>
							<div class="event-category">
								<span>Diet</span>
							</div>
						</div>
						<div class="event-image">
							<img
								src="${pageContext.request.contextPath}/image/events/Food.jpg" />
						</div>
					</div>
				</a>
			</div>
		</article>
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
