<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<script type="text/javascript" src="${project}js/logisticsScript.js"></script>
<script src="${project}js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
/* $('#amount').change(function() {
	var amount = $('#amount').val();
	var quantity = ${stsu_quantity};
}); */
</script>


<body>
	<table class="table bg-white text-dark center ass2" style="text-align:center">
	    <tr>
			<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
			colspan="2" style="vertical-align: middle;">상품명</td>
			<td class="font-weight-semi-bold border-top-0 py-2"
				colspan="2">
				<select class="custom-select custom-select-lg" id="prod" name="prod">
	               	<c:forEach var="prolist" items="${selprolist}">
						<option value="${prolist.pro_code}">${prolist.pro_name}</option>
	               	</c:forEach>
				</select>
			</td>
		</tr>
		
		<tr>
			<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>창고명</b></td>
			<td class="py-2" colspan="2">
				<select class="custom-select custom-select-lg" id="wareh" name="arrivewh">
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
			<td class="py-2" colspan="2" style="vertical-align: middle;"><b>조정 재고</b></td>
			<td class="py-2" colspan="2">
				<input class="form-control form-control-icon-text" type="text" id="amount" name="amount" onKeyup="calculation()" placeholder="조정 재고">
			</td>
		</tr>
		
		<tr>
			<td class="py-2" colspan="2" style="vertical-align: middle; "><b>조정 후 재고</b></td>
			<td class="py-2" colspan="2">
				<input class="form-control form-control-icon-text" type="text" id="quantity" name="quantity" readonly>
			</td>
		</tr>
		<tr>
	        <td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>사번</b></td>
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
</body>
</html>