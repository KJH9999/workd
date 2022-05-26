<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<link rel='stylesheet' type="text/css" href="${pageContext.request.contextPath}/resources/styles/common/global.css"/>
		<link rel='stylesheet' type="text/css" href="${pageContext.request.contextPath}/resources/styles/common/header.css"/>
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
	</head>
	<body>
		<header>
			<div>
				<div class="logo-wrapper">
					<img src="${pageContext.request.contextPath}/resources/images/logo.png"/>
					<div class="sns-wrapper">
						<div>KakaoTalk</div>
						<div>Instagram</div>
						<div>Naver 예약</div>
					</div>
				</div>
				<div class="menu">
					<div class="dropdown-wrapper">
						<div class="dropdown">
							<span class="text">
								커뮤니티
							</span>
							<ul class="list">
								<li>게시판</li>
								<li>이벤트</li>
								<li>문의사항</li>
							</ul>
						</div>
						<div class="dropdown">
							<span class="text">
								등록/문의
							</span>
							<ul class="list">
								<li>등록하기</li>
								<li>상담하기</li>
							</ul>
						</div>
						<div class="dropdown">
							<span class="text">
								이용안내
							</span>
							<ul class="list">
								<li>시간표</li>
								<li>시설위치</li>
							</ul>
						</div>
					</div>
					<div class="dropdown-wrapper">
						<div class="dropdown">
							<span class="text">
								로그인
							</span>
							<ul class="list">
								<li>내 정보</li>
								<li>인바디</li>
								<li>일정관리</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
	</body>   
</html>