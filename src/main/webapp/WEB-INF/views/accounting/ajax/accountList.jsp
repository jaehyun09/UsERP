<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../../setting.jsp"%>
</head>
<body>
	<table class="table bg-white text-dark center ass2 table-striped">
		<thead class="text-white table-bordered tap">
			<tr>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">계정명</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">계정금액</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${account}">
				<tr>
					<td class="py-3" style="vertical-align: middle">${vo.acco_name}</td>
					<td class="py-3" style="vertical-align: middle">${vo.acco_sum}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>