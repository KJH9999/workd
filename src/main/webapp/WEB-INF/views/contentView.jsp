<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css" />
<style>
.notice {
	padding: 30px;
}

.notice>.page-title {
	text-align: center;
	font-weight: bold;
	font-size: 30px;
	padding: 20px 0px;
	border-bottom: 1px solid lightgray;
	margin-bottom: 20px;
}

.btn-wrapper {
	display: flex;
	justify-content: flex-end;
}

.btn-wrapper>button {
	width: 150px;
	height: 50px;
	background: 0 0;
	outline: none; border : 3px solid black;
	border-radius: 5px;
	border: 3px solid black;
}

.container {
	border: 3px solid lightgray;
	margin-bottom: 15px;
}

.container>div {
	margin-bottom: 10px;
	padding: 10px
}

.title {
	font-size: 35px;
	font-weight: bold;
	font-family: 'EarlyFontDiary';
	display: flex;
}

.title>span {
	display: inline-block;
	width: 100%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	padding-bottom: 10px;
	border-bottom: 1px solid lightgray;
}

.title>span:first-child {
	flex: 0 0 100px;
}

.author {
	font-size: 20px;
	font-weight: bold;
	font-family: 'GimpoGothic';
	display: flex;
	justify-content: space-between;
	border-bottom: 1px solid gray;
}

.info {
	display: flex;
	justify-content: space-between;
	border-bottom: 1px solid gray;
}

.content {
	min-height: 500px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<hr>
	<section class="notice">
		<div class="page-title">
			<span>게시글</span>
		</div>
		<!-- board Content area -->
		<c:forEach items="${boardlist}" var="boardlist">
			<div id="board-list">
				<div class="container">
					<div class="title">
						<span> 제목 :&nbsp;</span> <span> ${boardlist.title} </span>
					</div>
					<div class="author">
						<span>작성자&nbsp;&nbsp;&nbsp;${boardlist.email}</span> <span>조회수&nbsp;&nbsp;&nbsp;${boardlist.hit}</span>
					</div>
					<div class="info">
						<span></span> <span>등록일&nbsp;&nbsp;&nbsp;${boardlist.at_time}</span>
					</div>
					<div class="content">${boardlist.content}</div>

				</div>
				<form action="board" class="btn-wrapper">
					<button type="submit" class="btn btn-dark" id="btn-list">목록</button>
				</form>
			</div>
		</c:forEach>
	</section>
</body>
</html>