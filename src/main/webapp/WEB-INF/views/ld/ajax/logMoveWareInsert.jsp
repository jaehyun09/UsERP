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
              
              <!-- 숨겨진 페이지 -->
		<div class="col">
			<div class="collapse multi-collapse"
				id="multiCollapseExample1">
				<div class="bg-white p-2">
					<table class="table bg-white text-dark center ass2">
                              	<tr class="text-white table-bordered tap">
                                  	<th colspan="3"> 재고 이동 내역 관리 </th>
                              	</tr>
                              	
                              	<tr>
							<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
								colspan="2" style="vertical-align: middle;">출발창고명</td>
							<td class="font-weight-semi-bold border-top-0 py-2"
								colspan="2">
								<select class="custom-select custom-select-lg">
									<option>양품창고</option>
									<option>불량품창고</option>
									<option>출고대기창고</option>
								</select>
							</td>
						</tr>
		
						<tr>
							<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>도착창고명</b></td>
							<td class="py-2" colspan="2">
								<select class="custom-select custom-select-lg">
									<option>양품창고</option>
									<option>불량품창고</option>
									<option>출고대기창고</option>
								</select>
							</td>
						</tr>
						<tr>
                           	<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>상품명</b></td>
                             	<td class="py-2" colspan="2">
                                     <select class="custom-select custom-select-lg">
									<option>상품01</option>
									<option>상품02</option>
									<option>상품03</option>
								</select>
                             	</td>
                          </tr>
						<tr>
							<td class="py-2" colspan="2" style="vertical-align: middle;"><b>수량</b></td>
							<td class="py-2" colspan="2">
								<input class="form-control form-control-icon-text" placeholder="수량" type="text">
							</td>
						</tr>
						<tr>
							<td class="py-2" colspan="2" style="vertical-align: middle; "><b>담당자</b></td>
							<td class="py-2" colspan="2">
								<input class="form-control form-control-icon-text" type="text" value="최유성" readonly>
							</td>
						</tr>
					</table>
					
				</div>
				<br>
				<div align=center>
                              <button type="button" type="submit" class="btn btn-outline-info">수정</button>&nbsp;&nbsp;&nbsp;
                              <button type="button" type="reset" class="btn btn-outline-info">재입력</button>&nbsp;&nbsp;&nbsp;
                              <button type="button" class="btn btn-outline-info">삭제</button>
                          	</div>
				<br><br><br>
			</div>
		</div>
		<!-- 숨겨진 페이지 종료 -->
		<table class="table bg-white text-dark center table-striped">
			<thead>
				<tr class="text-white table-bordered tap">
					<th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">수량</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">출발창고명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">도착창고명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">수정일</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2">상태</th>
					<th class="font-weight-semi-bold border-top-0 py-3 con2"></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="py-3 con2" style="vertical-align:middle">47531708</td>
					<td class="py-3 con2" style="vertical-align:middle">
						<a class="btn" data-toggle="collapse"
							href="#multiCollapseExample1" role="button"
							aria-expanded="false" aria-controls="multiCollapseExample1">상품이름01
						</a>
					</td>
					<td class="py-3 con2" style="vertical-align:middle">10</td>
					<td class="py-3 con2" style="vertical-align:middle">양품창고</td>
					<td class="py-3 con2" style="vertical-align:middle">불량품창고</td>
					<td class="py-3 con2" style="vertical-align:middle">최유성</td>
					<td class="py-3 con2" style="vertical-align:middle">2021-03-21</td>
					<td class="py-3 con2" style="vertical-align:middle">2021-03-21</td>
					<td class="py-3 con2" style="vertical-align:middle">승인대기중</td>
					<td class="py-3 con2" style="vertical-align:middle"><button type="button" class="btn btn-outline-info">이동승인</button></td>
				</tr>
		
				<tr>
					<td class="py-3 con2">47531708</td>
					<td class="py-3 con2">
						<a class="btn" data-toggle="collapse"
							href="#multiCollapseExample1" role="button"
							aria-expanded="false" aria-controls="multiCollapseExample1">상품이름01
						</a>
					</td>
					<td class="py-3 con2" style="vertical-align:middle">10</td>
					<td class="py-3 con2" style="vertical-align:middle">양품창고</td>
					<td class="py-3 con2" style="vertical-align:middle">불량품창고</td>
					<td class="py-3 con2" style="vertical-align:middle">최유성</td>
					<td class="py-3 con2" style="vertical-align:middle">2021-03-21</td>
					<td class="py-3 con2" style="vertical-align:middle">2021-03-21</td>
					<td class="py-3 con2" style="vertical-align:middle">승인대기중</td>
					<td class="py-3 con2" style="vertical-align:middle"><button type="button" class="btn btn-outline-info">이동승인</button></td>
				</tr>
			</tbody>
		</table>
		<!-- 페이지 넘버 이동 -->
		<div class="card-footer d-block d-md-flex align-items-center d-print-none">
		             						<!-- <div class="d-flex mb-2 mb-md-0">
			Showing 1 to 8 of 24 Entries
		</div> -->
			<nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
				<ul class="pagination justify-content-end font-weight-semi-bold mb-0">
					<li class="page-item">
						<a id="datatablePaginationPrev" class="page-link" href="#!" aria-label="Previous">
							<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i>
						</a>				
					</li>
					<li class="page-item d-none d-md-block">
						<a id="datatablePaginationPage0" class="page-link active" href="#!" data-dt-page-to="0">1</a>
					</li>
					<li class="page-item d-none d-md-block">
						<a id="datatablePagination1" class="page-link" href="#!" data-dt-page-to="1">2</a>
					</li>
					<li class="page-item d-none d-md-block">
						<a id="datatablePagination2" class="page-link" href="#!" data-dt-page-to="2">3</a>
					</li>
					<li class="page-item">
						<a id="datatablePaginationNext" class="page-link" href="#!" aria-label="Next">
							<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i>
						</a>				
					</li>				
				</ul>
			</nav>
		</div>
		<!-- 페이지 넘버 이동 끝 -->
                                 </div>

<div class="tab-pane fade" id="tabs2-tab2" role="tabpanel">
	<!-- 신규등록 -->
<form action="moveStsuInsert" method="post">
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
				<td class="py-2" colspan="2" style="vertical-align: middle; "><b>담당자</b></td>
				<td class="py-2" colspan="2">
					<input class="form-control form-control-icon-text" type="text" value="${sessionScope.mem_id}" readonly>
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