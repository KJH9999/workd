<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Document</title>
</head>
<body>
    <main class="login-main">
        <form class="login-form" action="loginOk" method="post">
            <h1>로그인</h1>
            <div class="login-input">
                <input type="email" class="login-input" id="IdInput" placeholder="name@example.com" name = "email">
            </div>
            <div class="login-input">
                <input type="password" class="login-input" id="PwInput" placeholder="Password" name = "pw">
            </div>
            <p>
                <button class="login-btn" type="submit">로그인</button>
            </p>
            <p> &copy; 2022–2022</p>
        </form>
    </main>
</body>
</html>