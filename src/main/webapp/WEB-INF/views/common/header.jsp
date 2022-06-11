<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/header.css" />
</head>
<body>
	<header>
		<div>
			<div class="logo-wrapper">
				<a href="home"><img src="${pageContext.request.contextPath}/image/logo.png" /></a>
				<div class="sns-wrapper">
					<div>KakaoTalk</div>
					<div>Instagram</div>
					<div>Naver 예약</div>
				</div>
			</div>
			<div class="menu">
				<div class="dropdown-wrapper">
					<div class="dropdown">
						<span class="text"> 커뮤니티 </span>
						<ul class="list">
							<li><a href="board">게시판</a></li>
							<li>이벤트</li>
						</ul>
					</div>
					<div class="dropdown">
						<span class="text"> 이용안내 </span>
						<ul class="list">
							<li>시간표</li>
							<li>위치</li>
							<li>내부 시설</li>
						</ul>
					</div>
				</div>
				<div class="dropdown-wrapper">
					<div class="dropdown">
					<% 
						Object s_email = session.getAttribute("email"); 
						if(s_email != null) { 
					%> 
							<span class="text"> 
							<%@ page import="java.util.regex.Pattern"%> 
							<%@ page import="java.util.regex.Matcher"%> <%
										String email = (String)s_email;
										Pattern p = Pattern.compile("(.+)@.+");
										Matcher m = p.matcher(email);
										String parsedEmail = "";
										if(m.matches() ) {
											parsedEmail = m.group(1);
										
							%>
							<%= parsedEmail %>
							<%
										}
							%>
							</span>
							<ul class="list">
								<li>내 정보</li>
								<li>등록하기</li>
								<li>
									<a href="inquire?email=<%=email%>">
										문의하기
									</a>
								</li>
								<li>
									<a href="logout">로그아웃</a>
								</li>
							</ul>
					<%
							} else {
					%>
								<span class="text"> <a href="login"> 로그인 </a>
								</span>
					<%
							}
					%>
					</div>
				</div>
			</div>
		</div>
	</header>
</body>
</html>