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
              class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab3"
              role="tab" aria-selected="true" data-toggle="tab">재고 조정 내역 </a></li>
           <li class="nav-item ml-4"><a
              class="nav-link px-2 pb-2 ass2" href="#tabs2-tab4" role="tab"
              aria-selected="false" data-toggle="tab">재고 조정 등록</a></li>
        </ul>
        
		<div id="tabsContent2" class="card-body tab-content p-0">
           <div class="tab-pane fade show active" id="tabs2-tab3"
              role="tabpanel">
			<table class="table  bg-white text-dark center ass2 table-striped">
				<thead>
					<tr class="text-white table-bordered tap">
						<th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">창고명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">조정 재고</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">조정 후 재고</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="py-3">47531708</td>
						<td class="py-3">상품이름01</td>
						<td class="py-3">양품창고</td>
						<td class="py-3">최유성</td>
						<td class="py-3">2021-03-21</td>
						<td class="py-3">-10</td>
						<td class="py-3">90</td>
					</tr>
					<tr>
						<td class="py-3">47531709</td>
						<td class="py-3">상품이름02</td>
						<td class="py-3">불량품창고</td>
						<td class="py-3">최유성</td>
						<td class="py-3">2021-03-21</td>
						<td class="py-3">+10</td>
						<td class="py-3">20</td>
					</tr>
					<tr>
						<td class="py-3">47531710</td>
						<td class="py-3">상품이름03</td>
						<td class="py-3">출고대기창고</td>
						<td class="py-3">최유성</td>
						<td class="py-3">2021-03-21</td>
						<td class="py-3">+20</td>
						<td class="py-3">30</td>
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
		
		<!-- 신규등록 -->
		<div class="tab-pane fade" id="tabs2-tab4" role="tabpanel">
			<table class="table bg-white text-dark center ass2" style="text-align:center">
                                 	<tr class="text-white table-bordered tap">
                                     	<th colspan="3"> 재고 조정 등록 </th>
                                 	</tr>
                                 	
                                 	<tr>
					<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
						colspan="2" style="vertical-align: middle;">상품명</td>
					<td class="font-weight-semi-bold border-top-0 py-2"
						colspan="2">
						<select class="custom-select custom-select-lg">
                                             <option>상품01</option>
                                             <option>상품02</option>
                                             <option>상품03</option>
                                        </select>
					</td>
				</tr>
				
				<tr>
					<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>창고명</b></td>
					<td class="py-2" colspan="2">
						<select class="custom-select custom-select-lg">
							<option>양품창고</option>
							<option>불량품창고</option>
							<option>출고대기창고</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="py-2 text-dark" colspan="4"style="vertical-align: middle;">
						<button type="button" class="btn btn-outline-info" style='float: middle;' data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">신규등록</button>
                         		<br>
            			<div class="collapse" id="collapseExample">
                 			<div class="bg-white p-4">
                  				<table class="table bg-white text-dark center ass2" style="text-align:center">
                               	<tr class="text-white table-bordered tap">
                                   	<th colspan="3"> 신규 등록 </th>
                               	</tr>
                               	
                               	<tr>
									<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
										colspan="2" style="vertical-align: middle;">상품명</td>
									<td class="font-weight-semi-bold border-top-0 py-2"
										colspan="2">
										<input class="form-control form-control-icon-text" type="text" value="상품01" readonly>
									</td>
								</tr>
						
								<tr>
									<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>창고명</b></td>
									<td class="py-2" colspan="2">
										<input class="form-control form-control-icon-text" type="text" value="양품창고" readonly>
									</td>
								</tr>
								
								<tr>
		                           	<td class="py-2 text-dark" colspan="2"style="vertical-align: middle;"><b>담당자</b></td>
		                             <td class="py-2" colspan="2">
		                                    <input class="form-control form-control-icon-text" type="text" value="최유성" readonly>
		                             </td>
		                       </tr>
								<tr>
									<td class="py-2" colspan="2" style="vertical-align: middle;"><b>창고 재고</b></td>
									<td class="py-2" colspan="2">
										<input class="form-control form-control-icon-text" type="text" placeholder="조정 재고">
									</td>
								</tr>
								<tr>
									<td class="py-2" colspan="2" style="vertical-align: middle; "><b>조정 후 재고</b></td>
									<td class="py-2" colspan="2">
										<input class="form-control form-control-icon-text" type="text" value="???(자동입력)" readonly>
									</td>
								</tr>
							</tbody>
						</table>
					<div align=center>
                        <button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                        <button type="button" type="reset" class="btn btn-outline-info">재입력</button>
                    </div>	
          				</div>
          			</div>
         		</td>
         	</tr>
			</table>
		</div>
		<!-- 신규등록 끝 -->
	</div>
</div>
<!-- 재고조정 끝 -->    
    
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>