<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>Document</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pages/login.css">
</link>
<style>
	.error-wrapper {
		color : red;
		text-align : center;
		margin-bottom: 20px;
	}
</style>
</head>
<body>
	<main>
	<section class="login-wrapper">
		<form action="loginOk" method="post" class="login-wrap">
			<h1 class="title">
				<div>
					<a href="home"> <img
						src="${pageContext.request.contextPath}/image/logo.png" />
					</a>
				</div>
			</h1>
			<div class="input-wrapper">
				<div class="input-wrap">
					<input type="email" class="login-input" id="email" name="email"
						placeholder="name@example.com">
				</div>
				<div class="input-wrap">
					<input type="password" class="login-input" id="pw" name="pw"
						placeholder="Password">
				</div>
			</div>
			<%
				Boolean isLoginFail = (Boolean)request.getAttribute("isLoginFail");
				if(isLoginFail != null) {
			%>
				<div class="error-wrapper">
					<span>로그인을 실패하였습니다.</span>
				</div>
			<%
				}
			%>
			<div class="button-wrapper">
				<div class="button-wrap">
					<button class="login-button" type="submit">로그인</button>
				</div>
				<div class="button-wrap">
					<button class="login-button" type="button">회원가입</button>
				</div>
			</div>
		</form>
		<div class="text-wrapper">
			<span> <a href="#">아이디/비밀번호 찾기</a>
			</span>
		</div>
		<div class="text-wrapper">
			<span> &copy; 2022 - 2022 </span>
		</div>
	</section>

	</main>
</body>
</html>