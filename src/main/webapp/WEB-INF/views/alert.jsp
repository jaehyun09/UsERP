<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card">
		<div class="card-header d-flex align-items-center border-bottom py-3">
			<h5 class="mb-0">알림</h5>
		</div>
		<c:forEach var="vo" items="${accsalert}">
			<div class="card-body p-0">
				<div class="list-group list-group-flush">
					<div class="list-group-item list-group-item-action">
						<div class="d-flex align-items-center text-nowrap mb-2">
							<i class="gd-info-alt icon-text text-primary mr-2"></i>
							<h6 class="font-weight-semi-bold mb-0">새로운 알림</h6>
						</div>
						<p class="mb-0">
							${alertCnt > 0} 
							<strong>${vo.department.dep_name}</strong>에서
							<c:if test="${vo.accountstatement.accs_type == 1}">
							판매
							</c:if>
							<c:if test="${vo.accountstatement.accs_type == 2}">
							채권
							</c:if>
							<c:if test="${vo.accountstatement.accs_type == 3}">
							구매
							</c:if>
							<c:if test="${vo.accountstatement.accs_type == 4}">
							채무
							</c:if>
							${vo.alert_content}
						</p>
						<a class="list-group-item-closer text-muted" href="${path}/deleteAc?alert_code=${vo.alert_code}"><i
							class="gd-close"></i></a>
					</div>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="vo" items="${logsalert}">
			<div class="card-body p-0">
				<div class="list-group list-group-flush">
					<div class="list-group-item list-group-item-action">
						<div class="d-flex align-items-center text-nowrap mb-2">
							<i class="gd-info-alt icon-text text-primary mr-2"></i>
							<h6 class="font-weight-semi-bold mb-0">새로운 알림</h6>
						</div>
						<p class="mb-0">
							<strong>${vo.department.dep_name}</strong>에서
							<c:if test="${vo.logsisticsstatement.logs_type == 6}">
							출고
							</c:if>
							<c:if test="${vo.logsisticsstatement.logs_type == 5}">
							입고
							</c:if>
							<c:if test="${vo.logsisticsstatement.logs_state == 3}">
								승인 되었습니다. <br>재고 (${vo.logsisticsstatement.product.pro_name})가 ${vo.logsisticsstatement.logs_shortage}개
								${vo.alert_content} <br>입고 요청 바랍니다.
							</c:if>
							<c:if test="${vo.logsisticsstatement.logs_state == 1}">
							${vo.alert_content} 
							</c:if>
						</p>
						<a class="list-group-item-closer text-muted" href="${path}/deleteAc?alert_code=${vo.alert_code}"><i
							class="gd-close"></i></a>
					</div>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="vo" items="${ssalert}">
			<div class="card-body p-0">
				<div class="list-group list-group-flush">
					<div class="list-group-item list-group-item-action">
						<div class="d-flex align-items-center text-nowrap mb-2">
							<i class="gd-info-alt icon-text text-primary mr-2"></i>
							<h6 class="font-weight-semi-bold mb-0">새로운 알림</h6>
						</div>
						<p class="mb-0">
							<strong>${vo.department.dep_name}</strong>에서
							${vo.alert_content}
						</p>
						<a class="list-group-item-closer text-muted" href="${path}/deleteAc?alert_code=${vo.alert_code}"><i
							class="gd-close"></i></a>
					</div>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="vo" items="${stalert}">
		<c:if test="${vo.accs_code == 0 && vo.logs_code == 0 && vo.ss_code == 0}">
			<div class="card-body p-0">
				<div class="list-group list-group-flush">
					<div class="list-group-item list-group-item-action">
						<div class="d-flex align-items-center text-nowrap mb-2">
							<i class="gd-info-alt icon-text text-primary mr-2"></i>
							<h6 class="font-weight-semi-bold mb-0">새로운 알림</h6>
						</div>
						<p class="mb-0">
							<strong>${vo.department.dep_name}</strong>에서
							${vo.alert_content}
						</p>
						<a class="list-group-item-closer text-muted" href="${path}/deleteAc?alert_code=${vo.alert_code}"><i
							class="gd-close"></i></a>
					</div>
				</div>
			</div>
			</c:if>
		</c:forEach>
	</div>
</body>
</html>