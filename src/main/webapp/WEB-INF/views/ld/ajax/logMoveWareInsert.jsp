<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file = "../../setting.jsp" %> 
<head>
    <!-- Title -->
    <title>Users | Graindashboard UI Kit</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${project}img/favicon.ico">
	<link rel="stylesheet" href="${project}css/board.css">
    <!-- Template -->
    <link rel="stylesheet" href="${project}css/graindashboard.css">
</head>

<body>

<main>

	<!-- 신규등록 -->
<form action="movelogsInsert" method="post">
<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
<c:forEach var="ware" items="${selectware}">
	<input type = "hidden" name = "waretype" value = "${ware.ware_type}">
</c:forEach>
		<table class="table bg-white text-dark center ass2" style="text-align:center">
               	<tr>
	             	<td class="font-weight-semi-bold border-top-0 py-2 text-dark" 
	             		colspan="2"style="vertical-align: middle;"><b>전표번호</b></td>
	                <td class="py-2" colspan="2">
	                	<select class="custom-select custom-select-lg" name="logscode">
	                	<c:if test="${empty logsCodeVo}"><option value="0"> 전표 없음  </option></c:if>
	                	<c:forEach var="logsCodeVo" items="${logsCodeVo}">
	                		<c:choose>
		                		<c:when test="${logsCodeVo.logs_code != 0}">
									<option value="${logsCodeVo.logs_code}">${logsCodeVo.logs_code}</option>
		                		</c:when>
	                		</c:choose>
	                	</c:forEach>
						</select>
                    </td>
            	</tr>
               	
               	<tr>
					<td class="py-2 text-dark" colspan="2" style="vertical-align: middle;"><b>출발창고명</b></td>
					<td class="font-weight-semi-bold border-top-0 py-2"
						colspan="2">
						<select class="custom-select custom-select-lg" name="startwh">
						<c:forEach var="ware" items="${selectware}">
							<c:if test="${ware.ware_type == 1}">
								<option value="${ware.ware_code}">${ware.ware_name}</option>
							</c:if>
							<c:if test="${ware.ware_type == 2}">
								<option value="${ware.ware_code}">${ware.ware_name}</option>
							</c:if>
							<c:if test="${ware.ware_type == 3}">
								<option value="${ware.ware_code}">${ware.ware_name}</option>
							</c:if>
						</c:forEach>
						</select>
					</td>
				</tr>
			
			<tr>
				<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>도착창고명</b></td>
				<td class="py-2" colspan="2">
					<select class="custom-select custom-select-lg" name="arrivewh">
						<c:forEach var="ware" items="${selectware}">
						<c:if test="${ware.ware_type == 1}">
							<option value="${ware.ware_code}">${ware.ware_name}</option>
						</c:if>
						<c:if test="${ware.ware_type == 2}">
							<option value="${ware.ware_code}">${ware.ware_name}</option>
						</c:if>
						<c:if test="${ware.ware_type == 3}">
							<option value="${ware.ware_code}">${ware.ware_name}</option>
						</c:if>
						</c:forEach>
					</select>
				</td>
			</tr>
			
			<tr>
             	<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>상품명</b></td>
                <td class="py-2" colspan="2">
                	<select class="custom-select custom-select-lg" name="prod">
                	<c:forEach var="prolist" items="${selprolist}">
						<option value="${prolist.pro_code}">${prolist.pro_name}</option>
                	</c:forEach>
					</select>
                 </td>
            </tr>
            
			<tr>
				<td class="py-2" colspan="2" style="vertical-align: middle;"><b>수량</b></td>
				<td class="py-2" colspan="2">
					<input class="form-control form-control-icon-text" name="amount" placeholder="수량" type="text">
				</td>
			</tr>
			<tr>
				<td class="py-2" colspan="2" style="vertical-align: middle; "><b>사번</b></td>
				<td class="py-2" colspan="2">
					<input class="form-control form-control-icon-text" type="text" name="empid" value="${sessionScope.mem_id}" readonly>
				</td>
			</tr>
		</tbody>
	</table>
		<div align=center>
           <button type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
           <button type="reset" class="btn btn-outline-info">재입력</button>
        </div>
	<!-- 신규등록 끝 -->
</form>

    
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>