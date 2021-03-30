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
	
		<!-- 체크박스 시작 -->
		<div class="form-check form-check-inline">
		    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
		    <label class="form-check-label" for="inlineCheckbox1">양품창고</label>
		</div>
		<div class="form-check form-check-inline">
		    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
		    <label class="form-check-label" for="inlineCheckbox2">불량품창고</label>
	    </div>
	    <div class="form-check form-check-inline">
		    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
		    <label class="form-check-label" for="inlineCheckbox1">출고대기창고</label>
		</div>
		<!-- 체크박스 끝 -->
		
		<!-- 검색창 시작 -->      
                         	<div class="input-group">
                          	<div class="input-group-append">
                              <i class="gd-search icon-text icon-text-sm"></i>
                            	</div>
                            	<input class="form-control form-control-icon-text" placeholder="상품명 검색" type="text" >
                          </div>
                          <br>
                          <!-- 검색창 끝 -->
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
			<tr>
				<td class="py-3">100001</td>
				<td class="py-3">상품명1</td>
				<td class="py-3">양품창고</td>
				<td class="py-3">10000</td>
				<td class="py-3">15000</td>
				<td class="py-3">100</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-02</td>
			</tr>
			<tr>
				<td class="py-3">100001</td>
				<td class="py-3">상품명1</td>
				<td class="py-3">불량품창고</td>
				<td class="py-3">10000</td>
				<td class="py-3">15000</td>
				<td class="py-3">0</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-02</td>
			</tr>
			<tr>
				<td class="py-3">100001</td>
				<td class="py-3">상품명1</td>
				<td class="py-3">출고대기창고</td>
				<td class="py-3">10000</td>
				<td class="py-3">15000</td>
				<td class="py-3">0</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-02</td>
			</tr>
			<tr>
				<td class="py-3">100002</td>
				<td class="py-3">상품명2</td>
				<td class="py-3">양품창고</td>
				<td class="py-3">9000</td>
				<td class="py-3">15000</td>
				<td class="py-3">100</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-15</td>
			</tr>
			<tr>
				<td class="py-3">100002</td>
				<td class="py-3">상품명2</td>
				<td class="py-3">불량품창고</td>
				<td class="py-3">9000</td>
				<td class="py-3">13000</td>
				<td class="py-3">0</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-15</td>
			</tr>
			<tr>
				<td class="py-3">100002</td>
				<td class="py-3">상품명2</td>
				<td class="py-3">출고대기창고</td>
				<td class="py-3">9000</td>
				<td class="py-3">13000</td>
				<td class="py-3">0</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-15</td>
			</tr>
			<tr>
				<td class="py-3">100003</td>
				<td class="py-3">상품명3</td>
				<td class="py-3">양품창고</td>
				<td class="py-3">22000</td>
				<td class="py-3">30000</td>
				<td class="py-3">100</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-21</td>
			</tr>
			<tr>
				<td class="py-3">100003</td>
				<td class="py-3">상품명3</td>
				<td class="py-3">불량품창고</td>
				<td class="py-3">22000</td>
				<td class="py-3">30000</td>
				<td class="py-3">0</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-21</td>
			</tr>
			<tr>
				<td class="py-3">100003</td>
				<td class="py-3">상품명3</td>
				<td class="py-3">출고대기창고</td>
				<td class="py-3">22000</td>
				<td class="py-3">30000</td>
				<td class="py-3">0</td>
				<td class="py-3">사용중</td>
				<td class="py-3">2017-09-21</td>
			</tr>
		</tbody>
	</table>
	
<div class="card-footer d-block d-md-flex align-items-center d-print-none">
                 <!-- <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div> -->

                 <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
                  <ul class="pagination justify-content-end font-weight-semi-bold mb-0">				
                   <li class="page-item">				
                   	<a id="datatablePaginationPrev" class="page-link" href="#!" aria-label="Previous">
                   	<i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>				
                   </li>
                   <li class="page-item d-none d-md-block">
                   	<a id="datatablePaginationPage0" class="page-link active" href="#!" data-dt-page-to="0">1</a>
                   </li>
                   <li class="page-item d-none d-md-block">
                   	<a id="datatablePagination1" class="page-link" href="#!" data-dt-page-to="1">2</a></li>
                   <li class="page-item d-none d-md-block">
                   <a id="datatablePagination2" class="page-link" href="#!" data-dt-page-to="2">3</a>
                   </li>
                   <li class="page-item">
                   	<a id="datatablePaginationNext" class="page-link" href="#!" aria-label="Next">
                   	<i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>				
                   </li>				
                  </ul>
                 </nav>
             </div>
						
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>