<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Document</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css">
</link>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pages/login.css">
</link>
</head>
<body>
	<main>
	<section class="login-wrapper">
		<form class="login-wrap">
			<h1 class="title">
				<div>
					<a href="home"> <img
						src="${pageContext.request.contextPath}/image/logo.png" />
					</a>
				</div>
			</h1>
			<div class="input-wrapper">
				<div class="input-wrap">
					<input type="email" class="login-input" id="email"
						placeholder="name@example.com">
				</div>
				<div class="input-wrap">
					<input type="password" class="login-input" id="pw"
						placeholder="Password">
				</div>
			</div>
			<div class="button-wrapper">
				<div class="button-wrap">
					<button class="login-button" type="submit">로그인</button>
				</div>
				<div class="button-wrap">
					<button class="login-button" type="submit">회원가입</button>
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