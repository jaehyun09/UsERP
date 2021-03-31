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
    <script src="${project}js/jquery-3.5.1.min.js"></script>
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="${project}img/favicon.ico">
	<link rel="stylesheet" href="${project}css/board.css">
    <!-- Template -->
    <link rel="stylesheet" href="${project}css/graindashboard.css">
</head>

<body>

<main>
                <table class="table table-bordered bg-white text-dark ass2 center th20">
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
                         <input class="form-control form-control-icon-text" placeholder="창고명" type="text" value="1">
                      </td>
                   </tr>
                   <tr>
                      <th class="font-weight-semi-bold border-top-0 py-4 h4">창고주소</th>
                      <td>
                         <input class="form-control form-control-icon-text" placeholder="창고주소" type="text" value="2">
                      </td>
                   </tr>
                </table>
                   <div align=center>
                       <button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                       <button type="button" type="reset" class="btn btn-outline-info">재입력</button>
                   </div>
    
</main>

<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>