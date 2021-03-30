<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file = "../setting.jsp" %> 
<head>
    <!-- Title -->
    <title>Users | Graindashboard UI Kit</title> 
    <script type="text/javascript">
function warehouseadd() {
	$.ajax({
      // sendRequest(콜백함수명, url, method, params)
      url: "warehouseadd", // 전송 페이지 => 컨트롤러 "basic_next"
      type: 'GET', // 전송방식('GET', 'POST') - method
      dataType: 'text', // 요청한 데이터 형식('html','xml','json','text','jsoup') - params?
      success: function(data){ // 콜백함수 - 전송에 성공했을 때의 결과가 data변수에 전달된다.
         $('#warehouse').html(data);
      },
      error: function(){
         alert('오류');
      }
   });
}


</script> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${project}img/favicon.ico">
	<link rel="stylesheet" href="${project}css/board.css">
    <!-- Template -->
    <link rel="stylesheet" href="${project}css/graindashboard.css">
</head>

<body class="has-sidebar has-fixed-sidebar-and-header">

<%@ include file = "../common/header.jsp" %> 
<main class="main">
	<!-- Start Sidebar Nav -->
	<aside id="sidebar" class="js-custom-scroll side-nav">
		<ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">
			<!-- 대메뉴 : 인사 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu">
				<a class="side-nav-menu-link media align-items-center" href="#" data-target="#gg">
					<span class="side-nav-menu-icon d-flex mr-3">
						<i class="gd-themify-favicon"></i>
					</span>
					<span class="side-nav-fadeout-on-closed media-body asss">인사 관리</span>
					<span class="side-nav-control-icon d-flex">
						<i class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span>
					<span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a>
				
				<!-- 중메뉴 : 인사 관리 -->
<!-- b -->		<ul id="gg" class="side-nav-menu side-nav-menu-second-level mb-0">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/hrBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/hrAppointment">인사 발령</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/hrCard">인사 카드</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/hrSalary">급여</a>
					</li>
				</ul>
			</li>
			<!-- 인사 관리 종료 -->
			
			<!-- 대메뉴 : 근태 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu">
				<a class="side-nav-menu-link media align-items-center" href="#" data-target="#subPages">
					<span class="side-nav-menu-icon d-flex mr-3">
						<i class="gd-timer"></i>
					</span>
					<span class="side-nav-fadeout-on-closed media-body asss">근태 관리</span>
					<span class="side-nav-control-icon d-flex">
						<i class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span>
					<span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a>

                <!-- 중메뉴 : 근태 관리 -->
<!-- b -->		<ul id="subPages" class="side-nav-menu side-nav-menu-second-level mb-0">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/waSelect">조회</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/waApplication">신청</a>
					</li>
				</ul>
			</li>
			<!-- 근태 관리 종료 -->
			
			<!-- 대메뉴 : 판매 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu">
				<a class="side-nav-menu-link media align-items-center" href="#" data-target="#subComponents">
					<span class="side-nav-menu-icon d-flex mr-3">
						<i class="gd-money"></i>
					</span>
					<span class="side-nav-fadeout-on-closed media-body asss">판매 관리</span>
					<span class="side-nav-control-icon d-flex">
						<i class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span>
					<span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a>
				
				<!-- 중메뉴 : 판매 관리 -->
<!-- b -->		<ul id="subComponents" class="side-nav-menu side-nav-menu-second-level mb-0">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stStatus">판매 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stRelStatus">출고 현황</a>
					</li>
				</ul>
			</li>
			<!-- 판매 관리 종료 -->
			
			<!-- 대메뉴 : 구매 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu">
				<a class="side-nav-menu-link media align-items-center" href="#" data-target="#asd">
					<span class="side-nav-menu-icon d-flex mr-3">
						<i class="gd-shopping-cart"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">구매 관리</span>
					<span class="side-nav-control-icon d-flex">
						<i class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span>
					<span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a>
				
				<!-- 중메뉴 : 구매 관리 -->
<!-- b -->		<ul id="asd" class="side-nav-menu side-nav-menu-second-level mb-0">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdStatus">구매 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdRecStatus">입고 현황</a>
					</li>
				</ul> 
			</li>
			<!-- 구매 관리 종료 -->
			
			<!-- 대메뉴 : 물류 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu side-nav-opened">
				<a class="side-nav-menu-link media align-items-center" href="#" data-target="#zxc">
					<span class="side-nav-menu-icon d-flex mr-3">
						<i class="gd-truck"></i>
					</span>
					<span class="side-nav-fadeout-on-closed media-body asss">물류 관리</span>
					<span class="side-nav-control-icon d-flex">
						<i class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span>
					<span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a>
				
				<!-- 중메뉴 : 물류 관리 -->
<!-- b -->		<ul id="zxc" class="side-nav-menu side-nav-menu-second-level mb-0" style="display:block;">
<!-- a -->			<li class="side-nav-menu-item active">
						<a class="side-nav-menu-link ass2" href="${path}/ldBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/ldStatementManagement">전표 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/ldInventoryControl">재고 관리</a>
					</li>
				</ul>
			</li>
			<!-- 물류 관리 종료 -->
			
			<!-- 대메뉴 : 회계 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu">
				<a class="side-nav-menu-link media align-items-center" href="#" data-target="#subUsers">
					<span class="side-nav-menu-icon d-flex mr-3">
						<i class="gd-infinite"></i>
					</span>
					<span class="side-nav-fadeout-on-closed media-body asss">회계 관리</span>
					<span class="side-nav-control-icon d-flex">
						<i class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span>
					<span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a>
				
				<!-- 중메뉴 : 회계 관리 -->
<!-- b -->		<ul id="subUsers" class="side-nav-menu side-nav-menu-second-level mb-0">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/adBasicReg">기초 등록</a>
					</li>
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/adReport">회계보고서</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/adStatementManagement">전표 관리</a>
					</li>
				</ul>
			</li>
			<!-- 회계 관리 종료 -->
			
		</ul>
	</aside>
	<!-- End Sidebar Nav -->



    <div class="content">
         <div class="py-4 px-3 px-md-4">
            <div class="card">
               <div class="card-body">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">물류 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">기초
                           등록</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>
                              기초 등록 </b><a class="anchorjs-link" href="#example"
                                 aria-label="Anchor" data-anchorjs-icon="#"></a>
                           </h4>
                           <div class="mb-3">
                              <!-- Nav Classic -->
                              <ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark"
                                 id="pills-tab-1" role="tablist">
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light " ><a
                                    class="nav-link d-flex align-items-center py-2 px-3 active"
                                    id="pills-result-tab-1" data-toggle="pill"
                                    href="#pills-result-1" onclick="compSearchList()" role="tab"
                                    aria-controls="pills-result-1" aria-selected="true"> 거래처
                                       조회</a></li>
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light"><a
                                    class="nav-link d-flex align-items-center py-2 px-3"
                                    id="pills-html-tab-1" data-toggle="pill"
                                    href="#pills-html-1" onclick="proSearchList()" role="tab" aria-controls="pills-html-1"
                                    aria-selected="false">상품 조회 </a></li>
                                    
                                 <li class="nav-item border-bottom border-xl-bottom-0 asss bg-light"><a
                                            class="nav-link d-flex align-items-center py-2 px-3"
                                            id="pills-html-tab-2" data-toggle="pill"
                                            href="#pills-html-2" role="tab" role="tab" aria-controls="pills-html-2"
                                            aria-selected="false">창고 관리</a></li>
                              </ul>
                              <!-- End Nav Classic -->

                              <!-- Tab Content -->
                              <div class="tab-content bg-lighter " id="pills-tabContent-1">
                                 <div class="tab-pane fade p-4 show active"
                                    id="pills-result-1" role="tabpanel"
                                    aria-labelledby="pills-result-tab-1">
                                    <!-- 검색창 시작 -->
                                            <div class="input-group">
                                               <div class="input-group-append">
                                                <i class="gd-search icon-text icon-text-sm"></i>
                                                 </div>
                                                 <input class="form-control form-control-icon-text" id="compKeyword" name="compKeyword" placeholder="거래처코드/거래처명 검색" type="text" >
                                            </div>
                                            <br>
                                            <!-- 검색창 끝 --> 
                                            
                                    <div id="compList"></div>
                                    
                                    <%-- <div class="row">
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
                                    </div> --%>
                                 </div>

                                 <div class="tab-pane fade p-4" id="pills-html-1"
                                    role="tabpanel" aria-labelledby="pills-html-tab-1">
                                    <!-- 검색창 시작 -->
                                            <div class="input-group">
                                               <div class="input-group-append">
                                                <i class="gd-search icon-text icon-text-sm"></i>
                                                 </div>
                                                 <input class="form-control form-control-icon-text" id="proKeyword" name="proKeyword" placeholder="상품코드/상품명 검색" type="text" >
                                            </div>
                                            <br>
                                            <!-- 검색창 끝 -->
                                            
                                            <div id="proList"></div>
                                            
                                    <%-- <div class="row">
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
                                    </div> --%>
                                 </div>
                                 
                                 <div class="tab-pane fade p-4" id="pills-html-2"
                                    role="tabpanel" aria-labelledby="pills-html-tab-2">
                                    <div class="px-3">
                                       <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-3"
                                                   role="tablist">
                                                   <li class="nav-item"><a
                                                      class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab3"
                                                      role="tab" aria-selected="true" data-toggle="tab">창고 목록</a></li>
                                                   <li class="nav-item ml-4"><a
                                                      class="nav-link px-2 pb-2 ass2" onclick="warehouseadd()" href="#tabs2-tab4" role="tab"
                                                      aria-selected="false" data-toggle="tab">창고 등록</a></li>
                                                 </ul>
                                    
                                 <div id="tabsContent2" class="card-body tab-content p-0">
                                 <div class="tab-pane fade show active" id="tabs2-tab3"
                                                 role="tabpanel">
                                             <!-- 숨겨진 페이지 -->
                                    <div class="col">
                                       <div class="collapse multi-collapse"
                                          id="multiCollapseExample1"> 
                                          <div class="bg-white p-4">
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
                                                         </div>
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
                                                </tr>
                                             </thead>
                                             <tbody>
                                                <c:forEach var="houseVo" items="${warehouseList}">
                                                <tr>
                                                   <td class="py-3 middle">
                                                   <a class="btn" data-toggle="collapse"
                                                      href="'#'+${houseVo.ware_code}" role="button"
                                                      aria-expanded="false" aria-controls="${houseVo.ware_code}">${houseVo.ware_code}
                                                      </a></td>
                                                   <td class="py-3 middle">${houseVo.ware_name}</td>
                                                   <td class="py-3 middle">${houseVo.ware_location}</td>
                                                </tr>
                                                </c:forEach>
                                             </tbody>
                                          </table>      
                                                 </div>
                                                 
                                                 <!-- 신규 등록 -->
                                                 <div class="tab-pane fade" id="tabs2-tab4"
                                                    role="tabpanel">
                                                    <div id="warehouse"></div>
                                                 </div>
                                                 <!-- 신규 등록 끝-->
                                                 
                                    </div>
                                    </div>
                                 </div>
                              </div>
                           
                              <!-- End Tab Content -->
                              
                                   <%--  <div class="card-footer d-block d-md-flex align-items-center d-print-none">
                                        <!-- <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div> -->
                                        <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination">
                                           <ul class="pagination justify-content-end font-weight-semi-bold mb-0">
                                              
                                              <c:if test="${cnt > 0}">
                                                 <c:if test="${startPage > pageBlock}">
                                                 <li class="page-item">            
                                                    <a id="datatablePaginationPrev" class="page-link" href="logBasicReg?pageNum=${startPage - pageBlock}&keyword=${keyword}" aria-label="Previous">
                                                    <i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>            
                                                 </li>
                                                 </c:if>
                                                 
                                                 <c:forEach var="i" begin="${startPage}" end="${endPage}">
                                                    <c:if test="${i == currentPage}">
                                                       <li class="page-item d-none d-md-block">
                                                          <a id="datatablePaginationPage0" class="page-link active" href="logBasicReg?pageNum=${i}&keyword=${keyword}">${i}</a>
                                                       </li>
                                                    </c:if>
                                                    <c:if test="${i != currentPage}">
                                                       <li class="page-item d-none d-md-block">
                                                          <a id="datatablePaginationPage0" class="page-link" href="logBasicReg?pageNum=${i}&keyword=${keyword}">${i}</a>
                                                       </li>
                                                    </c:if>
                                                 </c:forEach>
                                                 
                                                 <c:if test="${pageCnt > endPage}">
                                                    <li class="page-item">
                                                       <a id="datatablePaginationNext" class="page-link" href="logBasicReg?pageNum=${startPage + pageBlock}&keyword=${keyword}" aria-label="Next">
                                                       <i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>            
                                                    </li>
                                                 </c:if>
                                              </c:if>
                                              
                                           </ul>
                                        </nav>
                                    </div> --%>
                                    
                                    
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
      </div>
    
    
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>