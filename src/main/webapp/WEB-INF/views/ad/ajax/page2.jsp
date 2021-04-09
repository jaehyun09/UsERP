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
				<th colspan="4">급여전표<input type="hidden" value="${sccontent.employee.dep_code}"></th> <!-- sccontent -->
			</tr>
			<tr>
				<th colspan="1" style="width: 20%">NO.</th>
				<td colspan="3">${sccontent.ss_code}</td>
			</tr>
			<tr>
				<th colspan="1">사원명</th>
				<td colspan="3">${sccontent.employee.emp_name}</td>
			</tr>
			<tr>
				<th colspan="1">기본급</th>
				<td colspan="3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sccontent.salary.sal_basic}" /></td>
			</tr>
			<tr>
				<th colspan="1">야근수당</th>
				<td colspan="3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sccontent.salary.sal_night}" /></td>
			</tr>
			<tr>
				<th colspan="1">특근수당</th>
				<td colspan="3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sccontent.salary.sal_over}" /></td>
			</tr>
			<tr>
				<th colspan="1">근속수당</th>
				<td colspan="3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sccontent.salary.sal_cos}" /></td>
			</tr>
			<tr>
				<th colspan="1">직책수당</th>
				<td colspan="3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sccontent.salary.sal_or}" /></td>
			</tr>
			<tr>
				<th colspan="1">총급여</th>
				<td colspan="3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sccontent.ss_total_sal}" /></td>
			</tr>
			
		</tbody>
	</table>
	<c:if test="${sccontent.ss_state == 0 }">
				<div align=center> 
					<button type="button" onclick="location.href='${path}/saappr?ss_code=${sccontent.ss_code}&dep_code=${sccontent.employee.dep_code}'" class="btn btn-outline-info">승인</button>
					&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="location.href='${path}/sareappr?ss_code=${sccontent.ss_code}&dep_code=${sccontent.employee.dep_code}'" class="btn btn-outline-info">승인거부</button>
				</div>
			</c:if>
</body>
</html>