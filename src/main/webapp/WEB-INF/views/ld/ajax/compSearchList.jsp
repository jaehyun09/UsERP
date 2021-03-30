<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<script type="text/javascript" src="${project}js/logisticsScript.js"></script>
 
<body>

	<div class="row">
			<div class="col">
				<div class="collapse multi-collapse"
					id="multiCollapseExample1">
						<table class="table table-bordered bg-white text-dark ass2 th20">
							<tbody>
								<tr class="text-white con center">
									<th colspan="2">거래처명1</th>
								</tr>
								<tr>
									<th>NO.</th>
									<td>10</td>
								</tr>
								<tr>
									<th>사업자등록번호</th>
									<td>1234567890</td>
								</tr>
								<tr>
									<th>대표자명</th>
									<td>최유성</td>
								</tr>
								<tr>
									<th>업태</th>
									<td>업태1</td>

								</tr>
								<tr>
									<th>회사규모</th>
									<td>n명</td>
								</tr>
								<tr>
									<th>사용상태</th>
									<td>사용중</td>
								</tr>
								<tr>
									<th rowspan="4" style="vertical-align:middle">주요 거래 품목</th>
								</tr>
								<tr>
									<td>거래처명1 - 주요 거래 품목1</td>
								</tr>
								<tr>
									<td>거래처명1 - 주요 거래 품목2</td>
								</tr>
								<tr>
									<td>거래처명1 - 주요 거래 품목3</td>
								</tr>
							</tbody>
						</table><br><br><br>
				</div>
			</div>
			<table class="table  bg-white text-dark center ass2 table-striped">
				<thead>
					<tr class="text-white table-bordered tap">
						<th class="font-weight-semi-bold border-top-0 py-3 con2">거래처번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">분류</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">거래처명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">대표자명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">사업자등록번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">업종코드</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="complist" items="${complist}">
					<tr>
						<td class="py-1" style="vertical-align: middle">${complist.comp_code}</td>
						<c:choose>
							<c:when test="${complist.comp_use_state == 0}">
								<td class="py-1" style="vertical-align: middle">판매거래처</td>
							</c:when>
							<c:when test="${complist.comp_use_state == 1}">
								<td class="py-1" style="vertical-align: middle">구매거래처</td>
							</c:when>
						</c:choose>
						<td class="py-1" style="vertical-align: middle">
							<p>
								<a class="btn" data-toggle="collapse"
									href="#multiCollapseExample1" role="button"
									aria-expanded="false"
									aria-controls="multiCollapseExample1">${complist.comp_name}</a>
							</p>
						</td>
						<td class="py-1" style="vertical-align: middle">${complist.comp_ceo_name}</td>
						<td class="py-1" style="vertical-align: middle">${complist.comp_reg_no}</td>
						<td class="py-1" style="vertical-align: middle">${complist.comp_biz_reg_no}</td>
						<td class="py-1" style="vertical-align: middle">
							<fmt:formatDate pattern="yyyy-MM-dd" value="${complist.comp_write_reg_date}"/>
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
							                            	<a id="datatablePaginationPrev" class="page-link" href="logBasicReg?pageNum=${startPage - pageBlock}&compKeyword=${compKeyword}" aria-label="Previous">
							                            	<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>				
							                            </li>
						                            	</c:if>
						                            	
						                            	<c:forEach var="i" begin="${startPage}" end="${endPage}">
						                            		<c:if test="${i == currentPage}">
									                            <li class="page-item d-none d-md-block">
									                            	<a id="datatablePaginationPage0" class="page-link active" href="logBasicReg?pageNum=${i}&compKeyword=${compKeyword}">${i}</a>
									                            </li>
						                            		</c:if>
						                            		<c:if test="${i != currentPage}">
									                            <li class="page-item d-none d-md-block">
									                            	<a id="datatablePaginationPage0" class="page-link" href="logBasicReg?pageNum=${i}&compKeyword=${compKeyword}">${i}</a>
									                            </li>
						                            		</c:if>
						                            	</c:forEach>
							                            
						                            	<c:if test="${pageCnt > endPage}">
								                            <li class="page-item">
								                            	<a id="datatablePaginationNext" class="page-link" href="logBasicReg?pageNum=${startPage + pageBlock}&compKeyword=${compKeyword}" aria-label="Next">
								                            	<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>				
								                            </li>
						                            	</c:if>
					                            	</c:if>
					                            	
					                            </ul>
				                            </nav>
				                        </div>
</body>
</html>