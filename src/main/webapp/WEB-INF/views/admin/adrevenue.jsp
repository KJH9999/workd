<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel='stylesheet' type="text/css"
	href="${pageContext.request.contextPath}/css/admin/adrevenue.css" />

<meta charset="UTF-8">
</head>
<body>
	<div class="count-line">
		<div class="count-box">
			<div>
				<div class="card-body1">월 총 수익</div>
			</div>
		</div>
		<div class="count-box">
			<div>
				<div class="card-body2">회원 수</div>
			</div>
		</div>
		<div class="count-box">
			<div>
				<div class="card-body3">사용자 수</div>
			</div>
		</div>
	</div>
	<div class="graph">

		<div class="col-xl-6">

			<div class="card mb-4">

				<div class="card-header">
					<!-- <i class="fas fa-chart-area me-1"></i> Font Awesome fontawesome.com -->
					월간 수익 그래프
				</div>
				<div class="card-body">
					<div class="chartjs-size-monitor">
						<div class="chartjs-size-monitor-expand">
							<div class=""></div>
						</div>
						<div class="chartjs-size-monitor-shrink">
							<div class=""></div>
						</div>
					</div>
					<canvas id="myAreaChart" width="928" height="371"
						style="display: block; height: 297px; width: 743px;"
						class="chartjs-render-monitor"></canvas>
				</div>
			</div>
		</div>
		<div class="col-xl-6">

			<div class="card mb-4">

				<div class="card-header">
					<!-- <i class="fas fa-chart-area me-1"></i> Font Awesome fontawesome.com -->
					월간 수익 그래프
				</div>
				<div class="card-body">
					<div class="chartjs-size-monitor">
						<div class="chartjs-size-monitor-expand">
							<div class=""></div>
						</div>
						<div class="chartjs-size-monitor-shrink">
							<div class=""></div>
						</div>
					</div>
					<ul class="ratio">
						<li><div style="height: 30%">
								<em>30%</em>
							</div></li>
						<li><div style="height: 40%">
								<em>40%</em>
							</div></li>
						<li><div style="height: 100%">
								<em>50%</em>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

</body>
</html>