<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
				<span>Event</span>
				<div class="detail">
					<span> <a href="event"> 전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png">
					</a>
					</span>
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
		<article>
			<div class="title">
				<span>PT 강사</span>
				<div class="detail">
					<span><a href="ptTeacher">전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>
				</div>
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
		<article>
			<div class="title">
				<span>Youtube 영상</span>
				<div class="detail">
					<span><a href="youtube"> 전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>

				</div>
			</div>
			<div class="youtube-wrapper">
				<div class="video-wrapper">
					<div class="video-wrap">
						<div class="video">
							<iframe width="400" height="250"
								src="https://www.youtube.com/embed/lUYvCHnRy7k"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</div>
						<div class="video">
							<iframe width="400" height="250"
								src="https://www.youtube.com/embed/q5dF_qU4KmA"
								title="YouTube video player" frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe>
						</div>
						<div class="video">
							<iframe width="400" height="250"
								src="https://www.youtube.com/embed/Fx8t90Ypl6A"
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
						<li onclick="showCategory('squats');">스쿼트</li>
						<li onclick="showCategory('benchPress');">벤치프레스</li>
						<li onclick="showCategory('deadLift');">데드리프트</li>
						<li onclick="showCategory('all');">전체보기</li>
					</ul>
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
					</div>
					<div class="ranking">
						<div class="order">
							<span> 1 </span>
						</div>
						<div class="name">
							<span> 장동건 </span>
						</div>
						<div class="score">
							<span> 100 </span>
						</div>
					</div>
					<div class="ranking">
						<div class="order">
							<span> 2 </span>
						</div>
						<div class="name">
							<span> 이재강 </span>
						</div>
						<div class="score">
							<span> 99 </span>
						</div>
					</div>
					<div class="ranking">
						<div class="order">
							<span> 3 </span>
						</div>
						<div class="name">
							<span> 김재호 </span>
						</div>
						<div class="score">
							<span> 98 </span>
						</div>
					</div>
				</div>
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
					</div>
					<div class="ranking">
						<div class="order">
							<span> 1 </span>
						</div>
						<div class="name">
							<span> A </span>
						</div>
						<div class="score">
							<span> 100 </span>
						</div>
					</div>
					<div class="ranking">
						<div class="order">
							<span> 2 </span>
						</div>
						<div class="name">
							<span> B </span>
						</div>
						<div class="score">
							<span> 99 </span>
						</div>
					</div>
					<div class="ranking">
						<div class="order">
							<span> 3 </span>
						</div>
						<div class="name">
							<span> C </span>
						</div>
						<div class="score">
							<span> 98 </span>
						</div>
					</div>
				</div>
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
					</div>
					<div class="ranking">
						<div class="order">
							<span> 1 </span>
						</div>
						<div class="name">
							<span> A </span>
						</div>
						<div class="score">
							<span> 100 </span>
						</div>
					</div>
					<div class="ranking">
						<div class="order">
							<span> 2 </span>
						</div>
						<div class="name">
							<span> B </span>
						</div>
						<div class="score">
							<span> 99 </span>
						</div>
					</div>
					<div class="ranking">
						<div class="order">
							<span> 3 </span>
						</div>
						<div class="name">
							<span> C </span>
						</div>
						<div class="score">
							<span> 98 </span>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article>
			<div class="title">
				<span>Schedule</span>
				<div class="detail">
					<span><a href="schedule">전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>
				</div>
			</div>
			<div class="calendar-wrapper">
				<div class="calendar-wrap">
					<div id="calendar">	
					
					</div>
				</div>
				<div class="memo-wrapper">
					<div class="memo-wrap">
						<div class="title">
							<span>2022년 06월 9일</span>
						</div>
						<div class="list">
							<ul>
								<li>
									저녁 7시~저녁 9시 : 단체 레슨 
								</li>
								<li>
									저녁 9시~저녁 10시 : 개인 레슨
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</article>
		<article>
			<div class="title">
				<span>Map</span>
				<div class="detail">
					<span><a href="map">전체보기 <img
							src="${pageContext.request.contextPath}/image/icons/right-arrow.png"></a></span>
				</div>
			</div>
			<div id="map"></div>
			<div>
				위치 : 경기도 의정부시 서부로 545
				<button>길찾기</button>
				<button>카카오 지도에서 보기</button>

			</div>
		</article>
		<article>광고1</article>
		<article>광고2</article>
		<article>광고3</article>
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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/external/calendar/locales-all.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/external/calendar/ko.js">
	</script>
	<script type="text/javascript"
		charset="euc-kr"
		src="${pageContext.request.contextPath}/js/external/calendar/main.min.js">
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/pages/home.js">
	</script>
</body>
</html>
