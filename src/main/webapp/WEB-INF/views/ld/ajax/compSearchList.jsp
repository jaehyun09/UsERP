<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<script type="text/javascript" src="${project}script/logisticsScript.js"></script>
<script src="${project}js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function compInfo(code) {
		
		var param = "&${_csrf.parameterName}=${_csrf.token}&com_code=" + code;
	   $.ajax({
	      type:"POST",
		  data:param,
		  url:'logCompanyDetail',
	      success: function(data){ 
	         $('#cominfoDetail').html(data);
	      },
	      error: function(){
	         alert('오류');
	      }
	   });
	}
</script>
<body>

	<div class="row">
			<div class="col">
				<div class="collapse multi-collapse"
					id="multiCollapseExample1">
						<div id="cominfoDetail"></div>
				</div>
			</div>
			
			<table class="table  bg-white text-dark center ass2 table-striped">
				<thead>
					<tr class="text-white table-bordered tap">
						<th class="font-weight-semi-bold border-top-0 py-3 con2">거래처번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">구분</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">거래처명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">대표자명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">사업자등록번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="complist" items="${complist}">
					<tr>
						<td class="py-1" style="vertical-align: middle">
						<a class="text-dark con2" data-toggle="collapse"
								href="#multiCollapseExample1" role="button"
								aria-expanded="false"
								aria-controls="multiCollapseExample1"
								onclick="compInfo(${complist.com_code})">${complist.com_code}</a>
						</td>
						<c:choose>
							<c:when test="${complist.com_type == 20}">
								<td class="py-1" style="vertical-align: middle">판매거래처</td>
							</c:when>
							<c:when test="${complist.com_type == 10}">
								<td class="py-1" style="vertical-align: middle">구매거래처</td>
							</c:when>
						</c:choose>
						<td class="py-1" style="vertical-align: middle">${complist.com_name}</td>
						<td class="py-1" style="vertical-align: middle">${complist.com_ceo_name}</td>
						<td class="py-1" style="vertical-align: middle">${complist.com_reg_no}</td>
						<td class="py-1" style="vertical-align: middle">
							<fmt:formatDate pattern="yyyy-MM-dd" value="${complist.com_reg_date}"/>
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
                 	<a id="datatablePaginationPage0" class="page-link active" href="logBasicReg?pageNum=${i}">${i}</a>
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