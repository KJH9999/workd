<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/pages/join.css">
</head>
<body>
	<%
		Object s_email = session.getAttribute("email");
		String email = (String) s_email;
	%>
	<form action="modifyUserOk" onsubmit="onSubmit();">
		<c:forEach var="userlist" items="${userlist}" varStatus="status">
			<!-- wrapper -->
			<div id="wrapper">
				<a href="/ex"><div class="logimg">
						<img src="${pageContext.request.contextPath}/image/logo.png" />
					</div> </a>
				<!-- content-->
				<div id="content">
					<h3 class="join_title">
						<label for="email">Email</label></br> <input type="text" class="int"
							id="email" name="email" maxlength="20" disabled
							value="${userlist.email}">
					</h3>


					<!-- PW1 -->
					<div>
						<h3 class="join_title">
							<label for="pswd1">비밀번호</label>
						</h3>
						<input type="password" id="pswd1" name="pw" class="int"
							maxlength="20" value="${userlist.pw}">
					</div>


					<!-- NAME -->
					<div>
						<h3 class="join_title">
							<label for="name">이름</label>
						</h3>
						<input type="text" id="name" name="name" class="int"
							maxlength="20" value="${userlist.name}">
					</div>




					<!-- MOBILE -->
					<div>
						<h3 class="join_title">
							<label for="phoneNo">휴대전화</label>
						</h3>
						<input type="tel" id="mobile" name="number" class="int"
							maxlength="16" placeholder="전화번호 입력" value="${userlist.number}">

					</div>
					<input type="hidden" name="email" value="<%=email%>">

					<!-- JOIN BTN-->
					<div class="btn_area">
						<button type="submit" id="btnJoin">
							<span>수정하기</span>
						</button>
					</div>

				</div>
				<!-- content-->
			</div>
		</c:forEach>
	</form>
</body>
</html>