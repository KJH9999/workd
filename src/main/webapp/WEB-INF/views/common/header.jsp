<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/header.css" />
</head>
<body>
	<header id="header">
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
							<%
								String url = request.getRequestURI();
								String regEx = "ex/(.+)";
								Pattern pat = Pattern.compile(regEx);
								Matcher match = pat.matcher(url);
								System.out.println(match.groupCount());
								if(match.groupCount() > 0) {
							%>
				<div class="dropdown-wrapper">
					<div class="dropdown">
						<span class="text"> 커뮤니티 </span>
						<ul class="list">
							<li><a href="listPage?num=1">게시판</a></li>
							<li><a href="/ex#Event">이벤트</a></li>
						</ul>
					</div>
					<div class="dropdown">
						<span class="text"> 이용안내 </span>
						<ul class="list">
							<li><a href="/ex#Schedule">시간표</a></li>
							<li><a href="/ex#Map">위치</a></li>
							<%
								} else {
							%>
							<li><a href="/ex#Schedule">시간표</a></li>
							<li><a href="/ex#Map">위치</a></li>
							<%
								}
							%>
							<li><a href="https://m.blog.naver.com/no1bodyclass/220607797937"target="_blank">내부시설</a></li>
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
							<%= parsedEmail+" 님" %>
							<%
										}
							%>
							</span>
							<ul class="list">
								<li><a href="myinformation?email=<%=email%>">내 정보</a></li>
								<li><a href="regist">등록하기</a></li>
								<li>
									<a href="inquire?email=<%=email%>">문의하기</a>
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