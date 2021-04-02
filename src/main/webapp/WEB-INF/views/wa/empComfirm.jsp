<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file = "../setting.jsp" %> 
<head>
     <!-- Favicon -->
    <link rel="shortcut icon" href="${project}img/favicon.ico">
    <link rel="stylesheet" href="${project}css/board.css">
    <!-- Template -->
    <link rel="stylesheet" href="${project}css/graindashboard.css">
	<script src="${spath}hr.js"></script>
	
</head>
<body onload="confirmWaFocus();">
<div align=center>
<form action ="confirmEmp_Code?${_csrf.parameterName}=${_csrf.token}" method="post" name="confirmWaform" onsubmit="return confirmWaCheck();">
<br>
<br>
<c:if test="${selectCnt != 1}">
	<table>
	   <tr>
	      <td colspan="2">
	           <strong>${emp_code}</strong>는 존재하지 않는 사원번호입니다.
	      </td>
	   </tr>
	   <tr>
	   <td>&nbsp;</td>
	   </tr>
	   <tr>
	      <th> 사번 : &nbsp;&nbsp;</th>
	      <td>
	         <input class="form-control" type="text" name="emp_code"
	               style="width:150px" autofocus required>
	      </td>
	   </tr>
	   <tr>
	   <td>&nbsp;</td>
	   </tr>
	   <tr>
	      <th colspan="2">
	         <button type="submit" class="btn btn-outline-info">확인</button>&nbsp;&nbsp;
	         <button type="reset" class="btn btn-outline-info" onclick="self.close();"> 취소 </button>
	      </th>
	   </tr>
	</table>
</c:if>
<c:if test="${selectCnt == 1}">
	<table>
	   <tr>
	      <td align="center">
	        	사원 확인 되셨습니다.
	      </td>
	   </tr>
	   <tr>
	   <td>&nbsp;</td>
	   </tr>
	   <tr>
	      <th>
	         <input class="btn btn-outline-info" type="button" value="확인" onclick="setName('${emp_code}');">
	      </th>
	   </tr>
	</table>
</c:if>
</form>
</div>
</body>
</html>