<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 등록</title>
<style>
.select {
    padding: 15px 10px;
    text-align: center;	
}
.select input[type=radio]{
    display: none;
}
.select input[type=radio]+label{
    display: inline-block;
    cursor: pointer;
    height: 60px;
    width: 134px;
    border: 1px solid #333;
    line-height: 24px;
    text-align: center;
    font-weight:bold;
    font-size:13px;
}
.select input[type=radio]+label{
    background-color: #fff;
    color: #333;
}
.select input[type=radio]:checked+label{
    background-color: #333;
    color: #fff;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	
<script>
	function onClickRadio(payValue) {
		let pay = document.getElementsByName("pay")[0];
		pay.value = payValue;
	}
</script>
	<h1>등록하기</h1>
	<%
		Object s_email = session.getAttribute("email");
		String email = (String) s_email;
	%>
	<form action="registOk" method="get">
		 <div class="select">
		 <input type="hidden" name="email" value="<%=email%>"><br />
	<input type="hidden" name="pay" value="0">
     <input type="radio" id="select" name="slct" onclick=onClickRadio(60000) value="1"><label for="select">1개월<br/>6만원</label>
     <input type="radio" id="select2" name="slct"onclick=onClickRadio(150000) value="3"><label for="select2">3개월<br/>15만원</label>
     <input type="radio" id="select3" name="slct" onclick=onClickRadio(250000) value="6"><label for="select3">6개월<br/>25만원</label>
     <input type="radio" id="select4" name="slct" onclick=onClickRadio(360000) value="12"><label for="select4">12개월<br/>36만원</label>
		<input type="submit" value="결제하기">
</div>
	</form>

</body>
</html>