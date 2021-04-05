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
<div class="px-3">
        <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-3"
           role="tablist">
           <li class="nav-item"><a
              class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab1"
              role="tab" aria-selected="true" data-toggle="tab">재고 이동 내역 </a></li>
           <li class="nav-item ml-4"><a
              class="nav-link px-2 pb-2 ass2" href="#tabs2-tab2" role="tab"
              aria-selected="false" data-toggle="tab">재고 이동 등록</a></li>
        </ul>
        
        <div id="tabsContent2" class="card-body tab-content p-0">
           <div class="tab-pane fade show active" id="tabs2-tab1"
              role="tabpanel">
			<table class="table bg-white text-dark center table-striped">
			<thead>
				<tr class="text-white table-bordered tap">
					<th class="font-weight-semi-bold border-top-0 py-3 con2">상품번호</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">수량</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">출발창고명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">도착창고명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="move" items="${movelist}">
				<tr>
					<td class="py-3 con2" style="vertical-align:middle">${move.pro_code}</td>
					<td class="py-3 con2" style="vertical-align:middle">${move.product.pro_name}</td>
					<td class="py-3 con2" style="vertical-align:middle">${move.stsu_amount}</td>
					<td class="py-3 con2" style="vertical-align:middle">${move.stsu_startwh}</td>
					<td class="py-3 con2" style="vertical-align:middle">${move.stsu_arrivewh}</td>
					<td class="py-3 con2" style="vertical-align:middle">${move.employee.emp_name}</td>
					<td class="py-3 con2" style="vertical-align:middle">
						<fmt:formatDate pattern="yyyy-MM-dd" value="${move.stsu_reg_date}"/>
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
               	<a id="datatablePaginationPrev" class="page-link" href="ldInventoryControl?pageNum=${startPage - pageBlock}" aria-label="Previous">
               	<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>				
               </li>
              	</c:if>
              	
              	<c:forEach var="i" begin="${startPage}" end="${endPage}">
              		<c:if test="${i == currentPage}">
                 <li class="page-item d-none d-md-block">
                 	<a id="datatablePaginationPage0" class="page-link active" href="ldInventoryControl?pageNum=${i}">${i}</a>
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

<div class="tab-pane fade" id="tabs2-tab2" role="tabpanel">
	<!-- 신규등록 -->
<form action="moveStsuInsert" method="post">
<input type = "hidden" name = "${_csrf.parameterName}" value = "${_csrf.token}">
		<table class="table bg-white text-dark center ass2" style="text-align:center">
              	<tr class="text-white table-bordered tap">
                  	<th colspan="3"> 재고 이동 등록 </th>
              	</tr>
                                	
               	<tr>
					<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
						colspan="2" style="vertical-align: middle;">출발창고명</td>
					<td class="font-weight-semi-bold border-top-0 py-2"
						colspan="2">
						<select class="custom-select custom-select-lg" name="startwh">
						<c:forEach var="ware" items="${selectware}">
							<c:if test="${ware.ware_code >=1000 && ware.ware_code <= 1999 }">
								<option value="${ware.ware_code}">${ware.ware_name}</option>
							</c:if>
							<c:if test="${ware.ware_code >=2000 && ware.ware_code <= 2999 }">
								<option value="${ware.ware_code}">${ware.ware_name}</option>
							</c:if>
							<c:if test="${ware.ware_code >=3000 && ware.ware_code <= 3999 }">
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
						<c:if test="${ware.ware_code >=1000 && ware.ware_code <= 1999}">
							<option value="${ware.ware_code}">${ware.ware_name}</option>
						</c:if>
						<c:if test="${ware.ware_code >=2000 && ware.ware_code <= 2999}">
							<option value="${ware.ware_code}">${ware.ware_name}</option>
						</c:if>
						<c:if test="${ware.ware_code >=3000 && ware.ware_code <= 3999}">
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
	</div>
	</div>
	</div>

    
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>