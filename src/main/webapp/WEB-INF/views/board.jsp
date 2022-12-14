<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
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

#board-search {
	position: relative;
}

#board-search .search-window {
	padding: 15px 10px;
	background-color: #F9F7F9;
	display: flex;
	justify-content: space-between;
}

#board-search .search-window>div:first-child {
	flex: 0 0 300px;
}

#board-search .search-window>form:nth-child(2) {
	flex: 1 0 300px;
}

#board-search .search-window .search-wrap {
	position: relative;
	/*   padding-right: 124px; */
	width: 80%;
	max-width: 564px;
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

.write-btn-wrapper {
	
}

.write-btn-wrapper>button {
	height: 100%;
	border-radius: 5px;
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
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<div></div>
					<form action="search" method="get">
						<div class="search-wrap">
							<input id="title" name="title" placeholder="검색어를 입력해주세요.">

							<input type="submit" value="검색" class="btn btn-dark">
						</div>
					</form>


					<%
						if (s_email != null) {
					%>
					<form action="boardWrite" class="write-btn-wrapper">
						<button type="submit" class="btn btn-dark">글쓰기</button>
					</form>
					<%
						}
					%>
				</div>
			</div>

		</div>
		<!-- board list area -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-author">작성자</th>
							<th scope="col" class="th-author">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardlist}" var="boardlist">
							<tr>
								<td>${boardlist.idx}</td>
								<td><a href="contentView.do?idx=${boardlist.idx}">
										${boardlist.title}</a></td>
								<td>${boardlist.email}</td>
								<td>${boardlist.at_time}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<form action="listPage">
					<div
						style="display: inline-block; margin: 10px; padding-right: 10; float: right;">
						<input type="hidden" name="num" value="1">
						<button type="submit" class="btn btn-dark">전체보기</button>
					</div>
				</form>
			</div>
		</div>
	</section>
</body>
</html>