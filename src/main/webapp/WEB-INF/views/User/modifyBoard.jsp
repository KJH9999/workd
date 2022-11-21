<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
table {
	border-collapse: collapse;
	border-spacing: 0;
}

section.notice {
	padding: 80px 0;
}

.page-title {
	margin-bottom: 60px;
}

.page-title h3 {
	font-size: 28px;
	color: #333333;
	font-weight: 400;
	text-align: center;
}

#board-search .search-window {
	padding: 15px 0;
	background-color: #F9F7F9;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	margin: 0 auto;
	width: 80%;
	max-width: 800px;
}

#board-search .search-window .search-wrap input {
	height: 40px;
	width: 100%;
	font-size: 14px;
	padding: 7px 14px;
	border: 1px solid #ccc;
}

#board-search .search-window .search-wrap input:focus {
	border-color: #333;
	outline: 0;
	border-width: 1px;
}

#board-search .search-window .search-wrap .btn {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	width: 108px;
	padding: 0;
	font-size: 16px;
}

.board-table {
	font-size: 13px;
	width: 100%;
	border-top: 1px solid #ccc;
	border-bottom: 1px solid #ccc;
}

.board-table a {
	color: #333;
	display: inline-block;
	line-height: 1.4;
	word-break: break-all;
	vertical-align: middle;
}

.board-table a:hover {
	text-decoration: underline;
}

.board-table th {
	text-align: center;
}

.board-table .th-num {
	width: 100px;
	text-align: center;
}

.board-table .th-author {
	width: 200px;
	overflow: hidden;
	text-overflow: ellipsis;
	word-wrap: break-word;
}

.board-table .th-date {
	width: 200px;
}

.board-table th, .board-table td {
	padding: 14px 0;
}

.board-table tbody td {
	border-top: 1px solid #E7E7E7;
	text-align: center;
}

.board-table tbody th {
	padding-left: 28px;
	padding-right: 14px;
	border-top: 1px solid #E7E7E7;
	text-align: left;
}

.board-table tbody th p {
	display: none;
}

.btn {
	display: inline-block;
	padding: 0 30px;
	font-size: 15px;
	font-weight: 400;
	background: transparent;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	border: 1px solid transparent;
	text-transform: uppercase;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	-webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
	-ms-transition: all 0.3s;
	-o-transition: all 0.3s;
	transition: all 0.3s;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}

.btn-dark {
	background: #555;
	color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
	background: #373737;
	border-color: #373737;
	color: #fff;
}
/* reset */
* {
	list-style: none;
	text-decoration: none;
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.clearfix:after {
	content: '';
	display: block;
	clear: both;
}

.container {
	width: 1100px;
	margin: 0 auto;
}

.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	margin: -1px;
	width: 1px;
	height: 1px;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />

	<hr>
	<%
		Object s_email = session.getAttribute("email");
		String email = (String) s_email;
	%>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>게시글</h3>
			</div>
		</div>
		<!-- board seach area -->
		<c:forEach items="${boardlist}" var="boardlist">
			<div id="board-search">
				<div class="container">
					<div class="search-window">
						<form action=modifyBoardOk>
							<div class="search-wrap">
								<input type="hidden" name="idx" value="${boardlist.idx}">
								<input type="hidden" name="email" value="<%=email%>">
								<h4>
									EMAIL(작성자) :
									<%=email%></h4>
								<input type="hidden" name="email" value="<%=email%>"> <input
									id="title" type="search" name="title" style="margin: 10"
									value="${boardlist.title}">
								<textarea id="content" name="content"
									style="height: 350px; width: 800px; margin: 10; padding: 7px 14px">
								${boardlist.content}
							</textarea>
							</div>
							<div
								style="display: inline-block; margin: 10px; padding-right: 130; float: right;">
								<button type="submit" class="btn btn-dark">수정하기</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</c:forEach>

	</section>
</body>
</html>