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
    <table class="table table-bordered bg-white text-dark ass2 center ">
      <tbody>
	     <tr class="text-white con center">
	         <th colspan="3">퇴직자 조회</th>
	     </tr>        
	     <tr>
	         <th width="150">사번</th>
	         <td>${retired.emp_code}</td>
	     </tr>
	     <tr>
	         <th width="150">사원명</th>
	         <td>${retired.emp_name}</td>
	     </tr>
	     <tr>
	         <th width="150">부서명</th>
	         <td>${retired.department.dep_name}</td>
	     </tr>
	     <tr>
	         <th width="150">직급</th>
	         <td>${retired.hrCode.hr_code_name}</td>
	     </tr>
	     <tr>
	         <th width="150">퇴직일</th>
	         <td colspan="3"><fmt:formatDate pattern="yyyy-MM-dd" value="${retired.emp_date}"/></td>
	     </tr>                 
      </tbody>
   </table><br><br><br>
</body>
</html>