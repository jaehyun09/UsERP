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
						
		<table class="table  bg-white text-dark center ass2">
			<thead>
				<tr class="text-white tap">
					<th class="font-weight-semi-bold border-top-0 py-4 h4">기준일자</th>
					<th class="font-weight-semi-bold border-top-0 py-3 h4">
						<input type="date" class="form-control">
					</th>
					<th class="font-weight-semi-bold border-top-0 py-4 h4"> ~ </th>
					<th class="font-weight-semi-bold border-top-0 py-3 h4">
						<input type="date" class="form-control">
					</th>
					<th class="font-weight-semi-bold border-top-0 py-3 h5">
					<select class="custom-select">
					    <option>금일</option>
					    <option>금주</option>
					    <option>금월</option>
					    <option>금년</option>
					    <option>1분기</option>
					    <option>2분기</option>
					    <option>3분기</option>
					    <option>4분기</option>
					    <option>전반기</option>
					    <option>후반기</option>
					</select>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="5">
						<!-- 검색창 시작 -->      
                             	<div class="input-group">
                              	<div class="input-group-append">
                                  <i class="gd-search icon-text icon-text-sm" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample"></i>
                                	</div>
                                	<input class="form-control form-control-icon-text" placeholder="상품명 검색" type="text" >
                              </div>
					</td>
				</tr>
				<tr align="center">
					<td colspan="5">
						<input type="button" class="btn btn-outline-info" value="확인" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
						<input type="button" class="btn btn-outline-info" value="출력" >
					</td>
				</tr>
			</tbody>
		</table>
	<div class="collapse" id="collapseExample">
		<div class="bg-white p-4">
			<table class="table table-bordered bg-white text-dark ass2 center th20">
				<tr class="text-white con center">
					<th colspan="5">재고 수불 일보</th>
				</tr>
				<tr>
					<th>기간</th>
					<td colspan="4">2021-03-21 ~ 2021-03-21</td>
				</tr>
				<tr>
					<th>상품명</th>
					<td colspan="4">상품01(상품코드)</td>
				</tr>
				<tr>
					<th>날짜</th>
					<th>분류</th>
					<th>수량증가</th>
					<th>수량감소</th>
					<th>재고수량</th>
				</tr>
				<tr>
					<td>2021-03-21</td>
					<td>재고조정</td>
					<td>0</td>
					<td>10</td>
					<td>90</td>
				</tr>
			</table>
			<br>
		</div>
	</div>
										
				
    
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>