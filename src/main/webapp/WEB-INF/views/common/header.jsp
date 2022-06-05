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
				<img src="${pageContext.request.contextPath}/image/logo.png" />
				<div class="sns-wrapper">
					<div>KakaoTalk</div>
					<div>Instagram</div>
					<div>Naver ����</div>
				</div>
			</div>
			<div class="menu">
				<div class="dropdown-wrapper">
					<div class="dropdown">
						<span class="text"> Ŀ�´�Ƽ </span>
						<ul class="list">
							<li>�Խ���</li>
							<li>�̺�Ʈ</li>
						</ul>
					</div>
					<div class="dropdown">
						<span class="text"> �̿�ȳ� </span>
						<ul class="list">
							<li>�ð�ǥ</li>
							<li>��ġ</li>
							<li>���� �ü�</li>
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
								<li>�� ����</li>
								<li>����ϱ�</li>
								<li>
									<a href="logout">�α׾ƿ�</a>
								</li>
							</ul>
					<%
							} else {
					%>
								<span class="text"> <a href="login"> �α��� </a>
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