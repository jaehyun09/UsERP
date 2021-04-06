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
    <script src="${project}js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">
    
   /* 	$(function() {
   		$("#prod").click(function(){
   			var procode = $("#prod option:checked").text();
   			$("#prod_auto").val(procode);
   		});
   	}); 
   	
	$(function() {
   		$("#wareh").click(function(){
   			var warecode = $("#wareh option:checked").text();
   			$("#wareh_auto").val(warecode);
   		});
   	}); */
   	
   	$('#amount').change(function() {
   		var amount = $('#amount').val();
   		var quantity = ${stsu_quantity};
   		
   		if(count < quantity) {
   			alert("재고수량을 초과했습니다.");
   			
   			return false;
   		}
   	});
   	
	/* 재고 조정 신규 등록 AJAX */
    function logAdjNew() {
		
		var prod = $('#prod').val();
		var wareh = $('#wareh').val();
		var param = "${_csrf.parameterName}=${_csrf.token}&prod=" + prod + "&wareh="+wareh;
		
    	$.ajax({
          // sendRequest(콜백함수명, url, method, params)
          url: "logAdjNewInsert", // 전송 페이지 => 컨트롤러 "basic_next"
          type: 'POST', // 전송방식('GET', 'POST') - method
          data: param, // 요청한 데이터 형식('html','xml','json','text','jsoup') - params?
          success: function(data){ // 콜백함수 - 전송에 성공했을 때의 결과가 data변수에 전달된다.
             $('#adjNewInsert').html(data);
          },
          error: function(){
             alert('오류');
          }
       });
    }
	
    /* 재고 이동 등록 AJAX */
    function logMoveWareInsert() {
		
    	$.ajax({
          // sendRequest(콜백함수명, url, method, params)
          url: "logMoveWareInsert", // 전송 페이지 => 컨트롤러 "basic_next"
          type: 'GET', // 전송방식('GET', 'POST') - method
          dataType: 'text', // 요청한 데이터 형식('html','xml','json','text','jsoup') - params?
          success: function(data){ // 콜백함수 - 전송에 성공했을 때의 결과가 data변수에 전달된다.
             $('#moveWareInsert').html(data);
          },
          error: function(){
             alert('오류');
          }
       });
    }
    
    </script>
</head>

<body>
<main>


	<div class="px-3">
        <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-3"
           role="tablist">
           <li class="nav-item"><a
              class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab3"
              role="tab" aria-selected="true" data-toggle="tab">재고 조정 내역 </a></li>
           <li class="nav-item ml-4"><a
              class="nav-link px-2 pb-2 ass2" href="#tabs2-tab4" role="tab"
              aria-selected="false" data-toggle="tab">재고 조정 등록</a></li>
           <li class="nav-item ml-4"><a
              class="nav-link px-2 pb-2 ass2" href="#tabs2-tab7" role="tab"
              aria-selected="false" data-toggle="tab" onclick="logMoveWareInsert()">재고 이동 등록</a></li>
        </ul>
        
		<div id="tabsContent2" class="card-body tab-content p-0">
           <div class="tab-pane fade show active" id="tabs2-tab3"
              role="tabpanel">
			<table class="table  bg-white text-dark center ass2 table-striped">
				<thead>
					<tr class="text-white table-bordered tap">
						<th class="font-weight-semi-bold border-top-0 py-3 con2">상품번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">창고명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">조정 재고</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">조정 후 재고</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="adjlist" items="${adjlist}">
					<tr>
						<td class="py-3">${adjlist.pro_code}</td>
						<td class="py-3">${adjlist.product.pro_name}</td>
						<td class="py-3">${adjlist.stsu_arrivewh}</td>
						<td class="py-3">${adjlist.stsu_amount}</td>
						<td class="py-3">${adjlist.stsu_quantity}</td>
						<td class="py-3">${adjlist.employee.emp_name}</td>
						<td class="py-3">
							<fmt:formatDate pattern="yyyy-MM-dd" value="${adjlist.stsu_reg_date}"/>
						</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<!-- 페이지 넘버 이동 -->
		<div class="card-footer d-block d-md-flex align-items-center d-print-none">
            <!-- <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div> -->
            <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
             <ul class="pagination justify-content-end font-weight-semi-bold mb-0">
              <c:if test="${cnt > 0}">
              	<c:if test="${startPage > pageBlock}">
               <li class="page-item">				
               	<a id="datatablePaginationPrev" class="page-link" href="ldInventoryControl?pageNum=${startPage - pageBlock}" 
               			aria-label="Previous" onclick="logInvenAdjustment()">
               	<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>				
               </li>
              	</c:if>
              	
              	<c:forEach var="i" begin="${startPage}" end="${endPage}">
              		<c:if test="${i == currentPage}">
		                 <li class="page-item d-none d-md-block">
		                 	<a id="datatablePaginationPage0" class="page-link active" href="ldInventoryControl?pageNum=${i}" onclick="logInvenAdjustment()">${i}</a>
		                 </li>
              		</c:if>
              		<c:if test="${i != currentPage}">
		                 <li class="page-item d-none d-md-block">
		                 	<a id="datatablePaginationPage0" class="page-link" href="ldInventoryControl?pageNum=${i}">${i}</a>
		                 </li>
              		</c:if>
              	</c:forEach>
               
              	<c:if test="${pageCnt > endPage}">
	                <li class="page-item">
	                	<a id="datatablePaginationNext" class="page-link" href="ldInventoryControl?pageNum=${startPage + pageBlock}" aria-label="Next">
	                	<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>				
	                </li>
              	</c:if>
             	</c:if>
             </ul>
            </nav>
        </div>
		<!-- 페이지 넘버 이동 끝 -->
		</div>
		
		<!-- 신규등록 -->
		<div class="tab-pane fade" id="tabs2-tab4" role="tabpanel">
		<form action="invenAdjInsert" method="post">
		<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
			<table class="table bg-white text-dark center ass2" style="text-align:center">
                    <tr class="text-white table-bordered tap">
                        <th colspan="3"> 재고 조정 등록 </th>
                    </tr>
                                	
                    <tr>
					<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
						colspan="2" style="vertical-align: middle;">상품명</td>
					<td class="font-weight-semi-bold border-top-0 py-2"
						colspan="2">
						<select class="custom-select custom-select-lg" id="prod" name="prod" onclick="productAutoInput('${pro_code}')">
							<c:forEach var="selectpro" items="${selprolist}">
                             	<option value="${selectpro.pro_code}">${selectpro.pro_name}</option>
							</c:forEach>
                        </select>
					</td>
				</tr>
				
				<tr>
					<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>창고명</b></td>
					<td class="py-2" colspan="2">
						<select class="custom-select custom-select-lg" id="wareh" name="wareh" onclick="wareAutoInput('${ware_code}')">
							<c:forEach var="selectware" items="${selectware}">
								<c:if test="${selectware.ware_code >=1000 && selectware.ware_code <= 1999 }">
									<option value="${selectware.ware_code}">${selectware.ware_name}</option>
								</c:if>
								<c:if test="${selectware.ware_code >=2000 && selectware.ware_code <= 2999 }">
									<option value="${selectware.ware_code}">${selectware.ware_name}</option>
								</c:if>
								<c:if test="${selectware.ware_code >=3000 && selectware.ware_code <= 3999 }">
									<option value="${selectware.ware_code}">${selectware.ware_name}</option>
								</c:if>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr>
					<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;">사번</td>
					<td class="py-2" colspan="2">
		       			<input class="form-control form-control-icon-text" type="text" name="empid" value="${sessionScope.mem_id}" readonly></td>
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
						<!-- <button type="button" class="btn btn-outline-info" style='float: middle;' data-toggle="collapse" 
							data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample" onclick="logAdjNew()">신규등록</button>
                         		<br>
            			<div class="collapse" id="collapseExample">
                 			<div class="bg-white p-4">
                 				<div id="adjNewInsert"></div>
					<div align=center>
                        <button type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                        <button type="reset" class="btn btn-outline-info">재입력</button>
                    </div>	
          				</div>
          			</div> -->
			</table>
		</form>
		</div>
		<!-- 신규등록 끝 -->
		
		<div class="tab-pane fade" id="tabs2-tab7" role="tabpanel">
			<div id="moveWareInsert"></div>
		</div>
	</div>
</div>
<!-- 재고조정 끝 -->    
    
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>