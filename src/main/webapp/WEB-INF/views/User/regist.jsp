<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/external/calendar/main.min.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/common/global.css" />
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/pages/home.css" />
<meta charset="UTF-8">
<title>회원 등록</title>
<style>
.select {
	padding: 15px 10px;
	text-align: center;
}

.select input[type=radio] {
	display: none;
}

.select input[type=radio]+label {
	display: inline-block;
	cursor: pointer;
	height: 60px;
	width: 134px;
	border: 1px solid #333;
	line-height: 24px;
	text-align: center;
	font-weight: bold;
	font-size: 13px;
}

.select input[type=radio]+label {
	background-color: #fff;
	color: #333;
}

.select input[type=radio]:checked+label {
	background-color: #333;
	color: #fff;
}

.subbtn {
	background: powderblue;
	border: none;
	padding: 13 30;
}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp" />
	<hr/>
	<br/>

	<script>
		function onClickRadio(payValue) {
			let pay = document.getElementsByName("pay")[0];
			pay.value = payValue;
		}
	</script>

	<div class="title">
		<h1 style="text-align: center;">회원권 등록</h1>
	</div>
	<br/>
	<%
		Object s_email = session.getAttribute("email");
		String email = (String) s_email;
	%>

	<div class="ranking-wrapper">
		<div id="total" class="ranking-wrap">
			<div class="row" style="margin: auto;">
				<div class="col-xs-12">
					<form action="registOk" method="get">
						<div class="select">
							<input type="hidden" name="email" value="<%=email%>"><br />
							<input type="hidden" name="pay" value="0"> <input
								type="radio" id="select" name="slct" onclick=onClickRadio(60000)
								value="1"><label for="select">1개월<br />6만원
							</label> <input type="radio" id="select2" name="slct"
								onclick=onClickRadio(150000) value="3"><label
								for="select2">3개월<br />15만원
							</label> <input type="radio" id="select3" name="slct"
								onclick=onClickRadio(250000) value="6"><label
								for="select3">6개월<br />25만원
							</label> <input type="radio" id="select4" name="slct"
								onclick=onClickRadio(360000) value="12"><label
								for="select4">12개월<br />36만원
							</label> <input class="subbtn" type="submit" value="결제하기"
								onclick="order('결제')">
						</div>
					</form>
				</div>
			</div>
				<p style="text-align: center;">※ 회원권이 만료된 이후 등록해주세요.</p>
		</div>
	</div>
	<script language="JavaScript">
		     
	   function order(str) {
			if (str == "결제")
				alert("결제되었습니다.");
		}
	</script>


</body>
</html>