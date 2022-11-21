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
	<section id="ImageSlider" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#ImageSlider" data-slide-to="0" class="active"></li>
			<li data-target="#ImageSlider" data-slide-to="1"></li>
			<li data-target="#ImageSlider" data-slide-to="2"></li>
		</ol>
		<article class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100"
					src="${pageContext.request.contextPath}/image/imageSlide/imageSlide1.webp"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="${pageContext.request.contextPath}/image/imageSlide/imageSlide2.webp"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="${pageContext.request.contextPath}/image/imageSlide/imageSlide3.webp"
					alt="Third slide">
			</div>
			<a class="carousel-control-prev" href="#ImageSlider" role="button"
				data-slide="prev"> <span class="carousel-control-prev-icon"
				aria-hidden="true"></span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#ImageSlider" role="button"
				data-slide="next"> <span class="carousel-control-next-icon"
				aria-hidden="true"></span> <span class="sr-only">Next</span>
			</a>
		</article>
	</section>
	<section class="content-wrapper">

		<article>
			<div class="title">
				<span>Personal Trainer</span>
				<%-- <div class="detail">
					<span><a href="https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=no1bodyclass&logNo=220597699391"target="_blank">전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>
				</div> --%>
			</div>
			<div class="pt-wrapper">
				<div class="pt-wrap">
					<div class="pt-image">
						<img
							src="${pageContext.request.contextPath}/image/ptProfile/Pt1.jpg">
					</div>
					<div class="pt-profile">
						<div>
							<p>Name</p>
							<p>Phone</p>
							<p>Instagram</p>
						</div>
						<div>
							<p>강 다니엘</p>
							<p>010-0000-0000</p>
							<p>@daniel.k.here</p>
						</div>
					</div>
				</div>
				<div class="pt-wrap">
					<div class="pt-image">
						<img
							src="${pageContext.request.contextPath}/image/ptProfile/Pt2.jpg">
					</div>
					<div class="pt-profile">
						<div>
							<p>Name</p>
							<p>Phone</p>
							<p>Instagram</p>
						</div>
						<div>
							<p>장원영</p>
							<p>010-0000-0000</p>
							<p>@for_everyoung10</p>
						</div>
					</div>
				</div>
			</div>
		</article>

		<article id="Event" >
			<div class="title" name="Evnet">
				<span >Event</span>
				<div class="detail">
					<span> <a href="event"> 전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png">
					</a>
					</span>
				</div>
			</div>
			<div class="event-wrapper">
				<a>
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
				<a>
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

		<article>
			<div class="title">
				<span>Youtube 관련영상</span>
				<div class="detail">
					<span><a
						href="https://www.youtube.com/channel/UCdtRAcd3L_UpV4tMXCw63NQ"
						target="_blank"> 전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>

				</div>
			</div>
			<div class="youtube-wrapper">
				<div class="video-wrapper">
					<div class="video-wrap">
						<div class="video">
							<iframe width="400" height="250"
								src="https://www.youtube.com/embed/EBjYQeeBI-0"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</div>
						<div class="video">
							<iframe width="400" height="250"
								src="https://www.youtube.com/embed/EEqGCoTuYfQ"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</div>
						<div class="video">
							<iframe width="400" height="250"
								src="https://www.youtube.com/embed/aoH7qNedO8k	"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article>
			<div class="title">
				<span>Ranking</span>
				<div class="menu ranking-menu">
					<ul>
						<li onclick="showCategory('total');">3대</li>
						<li onclick="showCategory('squats');">스쿼트</li>
						<li onclick="showCategory('benchPress');">벤치프레스</li>
						<li onclick="showCategory('deadLift');">데드리프트</li>
					</ul>
				</div>
			</div>

			<div class="ranking-wrapper">
				<div id="total" class="ranking-wrap">
					<div class="title">
						<span> 3대 </span>
					</div>
					<div class="ranking-title">
						<div class="order">
							<span> 순위 </span>
						</div>
						<div class="name">
							<span> 이름 </span>
						</div>
						<div class="score">
							<span> 점수 </span>
						</div>
						<div class="date">
							<span> 날짜</span>
						</div>
					</div>
					<c:forEach var="totallist" items="${totallist}" varStatus="status">
						<div class="ranking">
							<div class="order">
								<span> ${status.count} </span>
							</div>
							<div class="name">
								<span> ${totallist.name} </span>
							</div>
							<div class="score">
								<span> ${totallist.total} </span>
							</div>
							<div class="date">
								<span> ${totallist.regist} </span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="ranking-wrapper">
				<div id="squats" class="ranking-wrap">
					<div class="title">
						<span> 스쿼트 </span>
					</div>
					<div class="ranking-title">
						<div class="order">
							<span> 순위 </span>
						</div>
						<div class="name">
							<span> 이름 </span>
						</div>
						<div class="score">
							<span> 점수 </span>
						</div>
						<div class="date">
							<span> 날짜</span>
						</div>
					</div>
					<c:forEach var="squatlist" items="${squatlist}" varStatus="status">
						<div class="ranking">
							<div class="order">
								<span> ${status.count} </span>
							</div>
							<div class="name">
								<span> ${squatlist.name} </span>
							</div>
							<div class="score">
								<span> ${squatlist.squat} </span>
							</div>
							<div class="date">
								<span> ${squatlist.regist} </span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="ranking-wrapper">
				<div id="benchPress" class="ranking-wrap">
					<div class="title">
						<span> 벤치프레스 </span>
					</div>
					<div class="ranking-title">
						<div class="order">
							<span> 순위 </span>
						</div>
						<div class="name">
							<span> 이름 </span>
						</div>
						<div class="score">
							<span> 점수 </span>
						</div>
						<div class="date">
							<span> 날짜</span>
						</div>
					</div>
					<c:forEach var="benchlist" items="${benchlist}" varStatus="status">
						<div class="ranking">
							<div class="order">
								<span> ${status.count} </span>
							</div>
							<div class="name">
								<span> ${benchlist.name} </span>
							</div>
							<div class="score">
								<span> ${benchlist.bench} </span>
							</div>
							<div class="date">
								<span> ${benchlist.regist} </span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>


			<div class="ranking-wrapper">
				<div id="deadLift" class="ranking-wrap">
					<div class="title">
						<span> 데드리프트 </span>
					</div>
					<div class="ranking-title">
						<div class="order">
							<span> 순위 </span>
						</div>
						<div class="name">
							<span> 이름 </span>
						</div>
						<div class="score">
							<span> 점수 </span>
						</div>
						<div class="date">
							<span> 날짜</span>
						</div>
					</div>
					<c:forEach var="deadlist" items="${deadlist}" varStatus="status">
						<div class="ranking">
							<div class="order">
								<span> ${status.count} </span>
							</div>
							<div class="name">
								<span> ${deadlist.name} </span>
							</div>
							<div class="score">
								<span> ${deadlist.dead} </span>
							</div>
							<div class="date">
								<span> ${deadlist.regist} </span>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</article>
		<article id="Schedule">
			<div class="title">
				<span>Schedule</span>
				<div class="detail"></div>
			</div>
			<div class="calendar-wrapper">
				<div class="calendar-wrap">
					<div id="calendar"></div>
				</div>
				<div class="memo-wrapper">
					<div class="memo-wrap">
						<div class="title">
							<%@ page import="java.time.LocalDate"%>
							<%@ page import="java.time.format.DateTimeFormatter"%>
							<%
								LocalDate now = LocalDate.now();
								DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
							%>
							<span><%=now.format(formatter)%></span>
						</div>
						<div class="list">
							<ul>
								<li>저녁 7시~저녁 9시 : 단체 레슨</li>
								<li>저녁 9시~저녁 10시 : 개인 레슨</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article id="Map">
			<div class="title">
				<span>Map</span>
				<div class="detail">
					<span><a
						href="https://map.naver.com/v5/search/%EA%B2%BD%EB%AF%BC%EB%8C%80%ED%95%99%EA%B5%90?c=14129677.3272502,4520244.4494029,14.57,0,0,0,dh"
						target="_blank">전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>
				</div>
			</div>
			<div class="map-wrapper">
				<div class="map-wrap">
					<div id="map"></div>
					<div class="button-wrapper"></div>
					<div class="text-wrapper">
						<div class="text-wrap">
							<div>
								<span>주소</span>
							</div>
							<div>
								<span>경기도 의정부시 서부로 545</span>
							</div>
						</div>
					</div>
					<div class="text-wrapper">
						<div class="text-wrap">
							<div>
								<span>이용시간</span>
							</div>
							<div class="time">
								<ul>
									<li><span>평일</span></li>
									<li><span>토요일</span></li>
									<li><span>일요일</span></li>
								</ul>
								<ul>
									<li><span>00:00 ~ 24:00</span></li>
									<li><span>00:00 ~ 22:00</span></li>
									<li><span>12:00 ~ 22:00</span></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="text-wrapper">
						<div class="text-wrap">
							<div>
								<span>전화번호</span>
							</div>
							<div>
								<span>031-828-7700</span>
							</div>
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
