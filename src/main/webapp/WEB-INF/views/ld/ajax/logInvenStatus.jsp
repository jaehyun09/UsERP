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
			
	<table class="table  bg-white text-dark center ass2 table-striped">
		<thead>
			<tr class="text-white table-bordered tap">
				<th class="font-weight-semi-bold border-top-0 py-3 con2">상품번호</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">창고이름</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">구매단가</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">판매단가</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">재고수량</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">사용상태</th>
				<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일자</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="stocklist" items="${stocklist}">
				<tr>
					<td class="py-3" style="vertical-align: middle">${stocklist.pro_code}</td>
					<td class="py-3" style="vertical-align: middle">${stocklist.product.pro_name}</td>
					<td class="py-3" style="vertical-align: middle">${stocklist.warehouse.ware_name}</td>
					<td class="py-3" style="vertical-align: middle">
						<fmt:formatNumber value="${stocklist.product.pro_pur_price}" pattern=",###" />
					</td>
					<td class="py-3" style="vertical-align: middle">
						<fmt:formatNumber value="${stocklist.product.pro_sal_price}" pattern=",###" />
					</td>
					<td class="py-3" style="vertical-align: middle">${stocklist.sto_quantity}</td>
					<c:if test="${stocklist.product.pro_state == 1}">
						<td class="py-3" style="vertical-align: middle">사용</td>
					</c:if>
					<td class="py-3">
						<fmt:formatDate pattern="yyyy-MM-dd" value="${stocklist.sto_reg_date}"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
<div class="card-footer d-block d-md-flex align-items-center d-print-none">
    <!-- <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div> -->
    <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
     <ul class="pagination justify-content-end font-weight-semi-bold mb-0">
     	
      <c:if test="${cnt > 0}">
      	<c:if test="${startPage > pageBlock}">
       <li class="page-item">				
       	<a id="datatablePaginationPrev" class="page-link" href="logInvenStatus?pageNum=${startPage - pageBlock}&ssKeyword=${ssKeyword}" aria-label="Previous">
       	<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>	
       </li>
      	</c:if>
      	
      	<c:forEach var="i" begin="${startPage}" end="${endPage}">
      		<c:if test="${i == currentPage}">
         <li class="page-item d-none d-md-block">
         	<a id="datatablePaginationPage0" class="page-link active" href="logInvenStatus?pageNum=${i}&ssKeyword=${ssKeyword}">${i}</a>
         </li>
      		</c:if>
      		<c:if test="${i != currentPage}">
         <li class="page-item d-none d-md-block">
         	<a id="datatablePaginationPage0" class="page-link" href="logInvenStatus?pageNum=${i}&ssKeyword=${ssKeyword}">${i}</a>
         </li>
      		</c:if>
      	</c:forEach>
       
      	<c:if test="${pageCnt > endPage}">
        <li class="page-item">
        	<a id="datatablePaginationNext" class="page-link" href="logInvenStatus?pageNum=${startPage + pageBlock}&ssKeyword=${ssKeyword}" aria-label="Next">
        	<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>				
        </li>
      	</c:if>
     	</c:if>
     	
     </ul>
    </nav>
</div>
						
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>