<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<script type="text/javascript" src="${project}js/logisticsScript.js"></script>
 
<body>
	<div class="row">
		<table class="table  bg-white text-dark center ass2 table-striped">
			<thead>
				<tr class="text-white table-bordered tap">
					<th class="font-weight-semi-bold border-top-0 py-3 con2">상품번호</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">구매단가</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">판매단가</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">사용상태</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="productList" items="${prolist}">
				<tr>
					<td class="py-3">${productList.pro_code}</td>
					<td class="py-3">${productList.pro_name}</td>
					<td class="py-3">${productList.pro_purchase_unit_price}</td>
					<td class="py-3">${productList.pro_sale_unit_price}</td>
					<c:choose>
						<c:when test="${productList.pro_use_state == 1}">
							<td class="py-3">사용중</td>
						</c:when>
						<c:when test="${productList.pro_use_state == 0}">
							<td class="py-3">사용중지</td>
						</c:when>
					</c:choose>
					<td class="py-3">
						<fmt:formatDate pattern="yyyy-MM-dd" value="${productList.pro_reg_date}"/>
					</td>
					
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
		<div class="card-footer d-block d-md-flex align-items-center d-print-none">
				                            <!-- <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div> -->
				                            <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
					                            <ul class="pagination justify-content-end font-weight-semi-bold mb-0">
					                            	
						                            <c:if test="${cnt > 0}">
						                            	<c:if test="${startPage > pageBlock}">
							                            <li class="page-item">				
							                            	<a id="datatablePaginationPrev" class="page-link" href="logBasicReg?pageNum=${startPage - pageBlock}&proKeyword=${proKeyword}" aria-label="Previous">
							                            	<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>				
							                            </li>
						                            	</c:if>
						                            	
						                            	<c:forEach var="i" begin="${startPage}" end="${endPage}">
						                            		<c:if test="${i == currentPage}">
									                            <li class="page-item d-none d-md-block">
									                            	<a id="datatablePaginationPage0" class="page-link active" href="logBasicReg?pageNum=${i}&proKeyword=${proKeyword}">${i}</a>
									                            </li>
						                            		</c:if>
						                            		<c:if test="${i != currentPage}">
									                            <li class="page-item d-none d-md-block">
									                            	<a id="datatablePaginationPage0" class="page-link" href="logBasicReg?pageNum=${i}&proKeyword=${proKeyword}">${i}</a>
									                            </li>
						                            		</c:if>
						                            	</c:forEach>
							                            
						                            	<c:if test="${pageCnt > endPage}">
								                            <li class="page-item">
								                            	<a id="datatablePaginationNext" class="page-link" href="logBasicReg?pageNum=${startPage + pageBlock}&proKeyword=${proKeyword}" aria-label="Next">
								                            	<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>				
								                            </li>
						                            	</c:if>
					                            	</c:if>
					                            	
					                            </ul>
				                            </nav>
				                        </div>
</body>
</html>