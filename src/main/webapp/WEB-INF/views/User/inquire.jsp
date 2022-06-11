<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>문의하기</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pages/login.css">
</link>
<style>
.title {
	width: 100%;
	max-width: 1000px;
	margin: 0 auto;
	color: white;
	padding: 15px 0;
	background-color: black;
	justify-content: flex-end;
	border-bottom: 1px solid black;
	padding: 15px 0;
	background-color: black;
	justify-content: flex-end;
}

.title>span {
	font-size: 30px;
	font-weight: bold;
	margin-right: 20px;
}

form {
	width: 100%;
	max-width: 1000px;
	margin: 0 auto;
	padding-bottom: 30px;
}

.wrapper {
	width: 100%;
	padding: 30px;
	max-width: 1000px;
	height: 600px;
	overflow-y: scroll;
	margin: 0 auto;
	padding-bottom: 200px;
	-ms-overflow-style: none; /* IE and Edge */
	scrollbar-width: none; /* Firefox */
	box-shadow: 0px 7px 13px 5px rgba(0, 0, 0, 0.66);
}

.wrapper::-webkit-scrollbar {
	display: none;
}

.wrap {
	width: 100%;
}

.message-wrapper {
	display: flex;
	flex-wrap: wrap;
}

.message-wrapper>.message-title {
	width: 100%;
	display: flex;
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 10px;
}

.message-wrapper>.message-title>span {
	padding: 10px 20px;
}

.left {
	justify-content: flex-start;
}

.right {
	justify-content: flex-end;
}

.message {
	padding: 30px;
	display: inline-block;
	border-radius: 10px;
	max-width: 300px;
}

.question {
	background-color: #DAEAFA;
}

.answer {
	background-color: #FAF7AA;
}

.input-wrapper {
	margin-top: 50px;
	margin-bottom: 30px;
}

.input-wrap {
	width: 100%;
	display: block;
}

.input-wrap textarea {
	width: 100%;
	height: 150px;
	padding: 12px 20px;
	box-sizing: border-box;
	border: 2px solid lightgray;
	border-radius: 4px;
	background-color: white;
	font-size: 16px;
	resize: none;
	color: black;
}

.input-wrap textarea::-webkit-input-placeholder {
	color: #000;
	opacity: 0.4;
}

.input-wrap textarea:-moz-placeholder { /* Firefox 18- */
	color: #000;
	opacity: 0.4;
}

.input-wrap textarea::-moz-placeholder { /* Firefox 19+ */
	color: #000;
	opacity: 0.4;
}

.input-wrap textarea:-ms-input-placeholder {
	color: #000;
	opacity: 0.4;
}

.input-wrap textarea::placeholder {
	color: #000;
	opacity: 0.4;
}

.button-wrap {
	justify-content: flex-end;
}

.button-wrap>button {
	position: relative;
	border: none;
	display: inline-block;
	padding: 15px 30px;
	border-radius: 15px;
	font-family: "paybooc-Light", sans-serif;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
	text-decoration: none;
	font-weight: 600;
	transition: 0.25s;
	cursor: pointer;
}

.button-wrap>#reset {
	margin-right: 20px;
	background-color: white;
}

.button-wrap>#submit {
	color: white;
	background-color: black;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<div class="title">
		<span> 문의하기 </span>
	</div>
	<div class="wrapper">
		<div class="wrap">
			<div class="message-wrapper right">
				<div class="message-title right">
					<span>질문</span>
				</div>
				<div class="message answer">PT 가격은 어떻게 정해져있나요?</div>
			</div>
			<div class="message-wrapper left">
				<div class="message-title left">
					<span>답변</span>
				</div>
				<div class="message question">
					10회 70만원 <br /> 20회 130만원<br /> 30회 190만원<br /> 으로 프로모션이 진행중에
					있습니다!
				</div>
			</div>

			<c:forEach var="myinquire" items="${myinquire}">
				<div class="message-wrapper right">
					<div class="message-title right">
						<span>질문</span>
					</div>
					<div class="message answer">${myinquire.question}</div>
				</div>
				<div class="message-wrapper left">
					<div class="message-title left">
						<span>답변</span>
					</div>
					<div class="message question">${myinquire.answer == null ? "답변이 완료되지 않았습니다." : myinquire.answer}</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<%
		Object s_email = session.getAttribute("email");
		String email = (String) s_email;
	%>
	<form action="writeinquireOk">
		<div class="input-wrapper">
			<div class="input-wrap">
				<div>
					<input type="hidden" name="email" value="<%=email%>" />
					<textarea name="question" placeholder="문의사항을 적어주세요."></textarea>
				</div>
			</div>
		</div>
		<div class="button-wrapper">
			<div class="button-wrap">
				<button id="reset" type="button">다시쓰기</button>
				<button id="submit" type="submit">제출하기</button>
			</div>
		</div>
	</form>
</body>
</html>