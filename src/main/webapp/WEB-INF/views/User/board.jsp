<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../common/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		Object s_email = session.getAttribute("email");
		String email = (String)s_email;
	%>
	
	<table border="1">
		<tr>
			<td> ��ȣ </td>
			<td> ���� </td>
			<td> �ۼ��� </td>
			<td> ��¥ </td>
			<td> ��ȸ�� </td>
		</tr>
			
			<c:forEach items="${boardlist}" var="boardlist">
			<tr>
			<td>${boardlist.idx}</td>
			<td>
				  <a href="contentView.do?idx=${boardlist.idx}"> ${boardlist.title}</a>
			</td>
			<td>${boardlist.email}</td>
			<td>${boardlist.at_time}</td>
			<td>${boardlist.hit}</td>
			</tr>
		</c:forEach>
			<tr>
				<td colspan="5"> <a href="writeview">���ۼ� </a></td>
				<td colspan="5"> <a href="loginOkbeta">�ڷΰ��� </a></td>
				</tr>
	</table>
	
    <div>
      <button onclick="history.back()">Back</button>
    </div>

</body>
</html>