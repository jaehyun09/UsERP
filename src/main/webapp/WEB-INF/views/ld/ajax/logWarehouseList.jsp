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
	
	/* 창고 상세페이지 AJAX 
	$(function() {
		$('#ware_code').click(function() {
			
			
			
			$.ajax({
				url: 'logWarehouseDetail?${_csrf.parameterName}=${_csrf.token}&ware_code=${wareCode}',
				type: 'GET',
				dataType: 'text',
				success: function(data){ // 콜백함수 - 전송에 성공했을 때의 결과가 data변수에 전달된다.
	             $('#logWarehouseDetail').html(data);
	          },
	          error: function(){
	             alert('오류');
	          }
			});
		});
	}); */
	
	/* 창고 상세페이지  */
    function waredetail() {
		var ware_code = $('#ware_code').val();
		var param = "${_csrf.parameterName}=${_csrf.token}&ware_code=" + ware_code;
		
    	$.ajax({
    		url: "logWarehouseDetail",
    		type: "POST",
    		data: param,
    		success: function(data) {
    			$('#logWarehouseDetail').html(data);
    		},
    		error: function() {
    			alert('오류');
    		}
    		
    	});
    }
	</script>
</head>

<body>

<main>
 <!-- 숨겨진 페이지 -->
 <div class="row">
       <div class="col">
          <div class="collapse multi-collapse"
             id="multiCollapseExample1"> 
             <div class="bg-white p-4">
             	<div id="logWarehouseDetail"></div>
             
                <!-- <table class="table table-bordered bg-white text-dark ass2 center th20">
                   <tr class="text-white con center">
                      <th colspan="2">창고 목록 수정</th>
                   </tr>
                   <tr>
                      <th class="font-weight-semi-bold border-top-0 py-4 h4">창고종류</th>
                      <td>
                         <select class="custom-select custom-select-lg">
                               <option>양품창고</option>
                               <option>불량품창고</option>
                               <option>출고대기창고</option>
                          </select>
                      </td>
                   </tr>
                   <tr>
                      <th class="font-weight-semi-bold border-top-0 py-4 h4">창고명</th>
                      <td>
                         <input class="form-control form-control-icon-text" placeholder="창고명" type="text" value="창고명">
                      </td>
                   </tr>
                   <tr>
                      <th class="font-weight-semi-bold border-top-0 py-4 h4">창고주소</th>
                      <td>
                         <input class="form-control form-control-icon-text" placeholder="창고주소" type="text" value="창고주소">
                      </td>
                   </tr>
                </table>
                   <div align=center>
                               <button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                               <button type="button" type="reset" class="btn btn-outline-info">재입력</button>
                            </div> -->
                	</div>
                	<br><br><br>
                </div>
             </div>
             <!-- 숨겨진 페이지 종료 -->
             <table class="table bg-white text-dark center ass2 table-striped">
                <thead>
                   <tr class="text-white table-bordered tap">
                      <th class="font-weight-semi-bold border-top-0 py-3 h4">창고ID</th>
                      <th class="font-weight-semi-bold border-top-0 py-3 h4">창고명</th>
                      <th class="font-weight-semi-bold border-top-0 py-3 h4">창고주소</th>
                      <th class="font-weight-semi-bold border-top-0 py-3 h4">상태</th>
                   </tr>
                </thead>
                <tbody>
                   <c:forEach var="houseVo" items="${warehouseList}">
                   <tr>
                      <td class="py-3 middle">
                      <input type="hidden" id="ware_code" value="${houseVo.ware_code}">
                      <a class="btn" data-toggle="collapse"
                         href="#multiCollapseExample1" role="button"
                         aria-expanded="false" aria-controls="multiCollapseExample1" onclick="waredetail()">${houseVo.ware_code}
                         </a></td>
                      <td class="py-3 middle">${houseVo.ware_name}</td>
                      <td class="py-3 middle">${houseVo.ware_location}</td>
                      <c:choose>
                      		<c:when test="${houseVo.ware_state == 0}">
                      			<td class="py-3 middle">미사용</td>
                      		</c:when>
                      		<c:when test="${houseVo.ware_state == 1}">
                      			<td class="py-3 middle">사용중</td>
                      		</c:when>
                      </c:choose>
                   </tr>
                   </c:forEach>
                </tbody>
             </table>
             </div>
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>