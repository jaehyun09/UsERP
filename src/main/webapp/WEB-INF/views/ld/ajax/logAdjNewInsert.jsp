<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<script type="text/javascript" src="${project}script/logisticsScript.js"></script>
<script src="${project}js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

$(function() {
		$("#amount").keyup(function(){
			var amount = parseInt($('#amount').val());
			var quantity = ${stsu_quantity};
			var quantityReturn = quantity + amount; 
			$("#quantity").val(quantityReturn);
		});
	}); 

$('#amount').change(function() {
	var amount = $('#amount').val();
	var quantity = ${stsu_quantity};
	
	if(count < quantity) {
		alert("재고수량을 초과했습니다.");
		
		return false;
	}
});


</script>


<body>
	<table class="table bg-white text-dark center ass2" style="text-align:center">
	    <tr class="text-white table-bordered tap">
    		<th colspan="3"> 신규 등록 </th>
	    </tr>
	                    	
	    <tr>
			<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
			colspan="2" style="vertical-align: middle;">상품명</td>
			<td class="font-weight-semi-bold border-top-0 py-2"
				colspan="2">
				<input class="form-control form-control-icon-text" id="prod_auto" type="text" readonly>
			</td>
		</tr>
		
		<tr>
			<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>창고명</b></td>
			<td class="py-2" colspan="2">
				<input class="form-control form-control-icon-text" id="wareh_auto" type="text" readonly>
			</td>
		</tr>
		
		<tr>
	        <td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>사번</b></td>
			<td class="py-2" colspan="2">
		       <input class="form-control form-control-icon-text" type="text" name="empid" value="${sessionScope.mem_id}" readonly>
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
	</tbody>
</table>
</body>
</html>