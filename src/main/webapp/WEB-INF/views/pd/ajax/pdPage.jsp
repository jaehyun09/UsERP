<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../../setting.jsp"%>
</head>
<body>
	<table class="table table-bordered bg-white text-dark ass2 center">
		<tbody>
			<tr class="text-white con">
			<c:if test="${pdContent.accs_type == 3 }">
                <th colspan="4">구매전표</th>
            </c:if>
            </tr>
			<tr>
				<th colspan="1" style="width: 20%">NO.</th>
				<td colspan="3">${pdContent.accs_code}</td>
			</tr>
			<tr>
				<th colspan="1">거래처명</th>
				<td colspan="3">${pdContent.company.com_name}</td>
			</tr>
			<tr>
				<th colspan="1">상품명</th>
				<td colspan="3">${pdContent.product.pro_name}</td>
			</tr>
			<tr>
				<th colspan="1">담당자</th>
				<td colspan="3">${pdContent.employee.emp_name}</td>
			</tr>
			<tr>
				<th colspan="1">단가</th>
				<td colspan="3">${pdContent.accs_price}</td>
			</tr>
			<tr>
				<th colspan="1">수량</th>
				<td colspan="3">${pdContent.accs_quantity}</td>
			</tr>
			<tr>
				<th colspan="1">총액</th>
				<td colspan="3">${pdContent.accs_sum}</td>
			</tr>
			<tr>
				<th colspan="1">상세내용</th>
				<td colspan="3">${pdContent.accs_content}</td>
			</tr>
		</tbody>
	</table>
	<br>
	<br>
	<br>
</body>
</html>