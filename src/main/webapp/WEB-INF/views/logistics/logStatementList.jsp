<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file = "../setting.jsp" %> 
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
						<a class="side-nav-menu-link ass2" href="${path}/personnelBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/personnelAppointment">인사 발령</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/personnelCard">인사 카드</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/personnelSalary">급여</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/abSelect">조회</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/abApplication">신청</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/salesBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/salesInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/salesStatus">판매 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/salesRelStatus">출고 현황</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/purBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/purInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/purStatus">구매 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/purRecStatus">입고 현황</a>
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
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logBasicReg">기초 코드</a>
					</li>
					<li class="side-nav-menu-item active">
						<a class="side-nav-menu-link ass2" href="${path}/logStatementList">전표 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logMoveWarehouse">재고 이동</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logInvenAdjustment">재고 조정</a>
					</li>    
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logInvenSupply">재고 수불부</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logWarehouseList">창고 현황</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/accReport">회계보고서</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accBankManagement">계좌 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accManagement">계정 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accStatementManagement">전표 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accBonddebtManagement">채권/채무 조회</a>
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
                        <li class="breadcrumb-item active" aria-current="page">전표 관리</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>전표 관리</b>
                                    <a class="anchorjs-link" href="#example"
                                       aria-label="Anchor" data-anchorjs-icon="#"></a>
                                 </h4>
                           <div class="mb-3">
                              <!-- Nav Classic -->
                              <ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark"
                                 id="pills-tab-1" role="tablist">
                                 <li class="nav-item border-bottom border-xl-bottom-0 asss bg-light"><a
                                    class="nav-link d-flex align-items-center py-2 px-3 active"
                                    id="pills-html-tab-3" data-toggle="pill"
                                    href="#pills-html-3" role="tab" aria-controls="pills-html-3"
                                    aria-selected="false">입고 전표</a></li>
                                    
                                 <li class="nav-item border-bottom border-xl-bottom-0 asss bg-light"><a
                                    class="nav-link d-flex align-items-center py-2 px-3"
                                    id="pills-html-tab-4" data-toggle="pill"
                                    href="#pills-html-4" role="tab" aria-controls="pills-html-4"
                                    aria-selected="false">출고 전표</a></li>
                              </ul>
                              <!-- End Nav Classic -->
                              
                              <!-- Tab Content -->
                              <div class="tab-content bg-lighter" id="pills-tabContent-1">
                                 <div class="tab-pane fade p-4 show active" id="pills-html-3"
                                    role="tabpanel" aria-labelledby="pills-html-tab-3">
                                    <div class="px-3">
                                       <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-3"
                                          role="tablist">
                                          <li class="nav-item"><a
                                             class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab3"
                                             role="tab" aria-selected="true" data-toggle="tab">미승인 전표 조회</a></li>
                                          <li class="nav-item ml-4"><a
                                             class="nav-link px-2 pb-2 ass2" href="#tabs2-tab4" role="tab"
                                             aria-selected="false" data-toggle="tab">승인 전표 조회</a></li>
                                       </ul>
                                       
                                       <div id="tabsContent2" class="card-body tab-content p-0">
                                          <div class="tab-pane fade show active" id="tabs2-tab3"
                                             role="tabpanel">
                                             <table class="table bg-white text-dark center ass2 table-striped">
                                                         <thead class="text-white table-bordered tap">
                                                            <tr class="text-white table-bordered tap">
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">구매번호그런거없을까</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">구매수량</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">창고명</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">입고일</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">최종수정일</th>
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">승인버튼</th>
                                                            </tr>
                                                         </thead>
                                                         <tbody>
                                                            <tr>
                                                               <td class="py-3">123456</td>
                                                               <td class="py-3">12345</td>
                                                               <td class="py-3">상품명1</td>
                                                               <td class="py-3">100</td>
                                                               <td class="py-3">양품창고</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-3">김민수</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-2 middle">
                                                                  <button type="button" class="btn btn-outline-info" style='float: middle;'>
                                                                     승인
                                                                </button>
                                                              </td>
                                                            </tr>
                                                            <tr>
                                                               <td class="py-3">123456</td>
                                                               <td class="py-3">12345</td>
                                                               <td class="py-3">상품명1</td>
                                                               <td class="py-3">100</td>
                                                               <td class="py-3">양품창고</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-3">김민수</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-2 middle">
                                                                  <button type="button" class="btn btn btn-outline-info" style='float: middle;'>
                                                                     승인
                                                                  </button>
                                                  </td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                       </div>
                                          <div class="tab-pane fade" id="tabs2-tab4" role="tabpanel">
                                             <table class="table bg-white text-dark center ass2 table-striped">
                                                            <thead class="text-white table-bordered tap">
                                                                 <tr class="text-white table-bordered tap">
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
                                                   <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                   <th class="font-weight-semi-bold border-top-0 py-3 con2">구매수량</th>
                                                   <th class="font-weight-semi-bold border-top-0 py-3 con2">입고일</th>
                                                   <th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
                                                   <th class="font-weight-semi-bold border-top-0 py-3 con2">승인버튼수정해야..</th>
                                                               </tr>
                                                            </thead>
                                                            <tbody>
                                                               <tr>
                                                                  <td class="py-3">12345</td>
                                                                  <td class="py-3">상품명1</td>
                                                                  <td class="py-3">100</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-3">김민수</td>
                                                                  <td class="py-3">입고완료</td>
                                                               </tr>
                                                               <tr>
                                                                  <td class="py-3">12345</td>
                                                                  <td class="py-3">상품명1</td>
                                                                  <td class="py-3">100</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-3">김민수</td>
                                                                  <td class="py-3">입고완료</td>
                                                               </tr>
                                                            </tbody>
                                                         </table>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="tab-pane fade p-4" id="pills-html-4"
                                    role="tabpanel" aria-labelledby="pills-html-tab-4">
                                    <div class="px-3">
                                       <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-3"
                                          role="tablist">
                                          <li class="nav-item"><a
                                             class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab5"
                                             role="tab" aria-selected="true" data-toggle="tab">미승인 전표 조회 </a></li>
                                          <li class="nav-item ml-4"><a
                                             class="nav-link px-2 pb-2 ass2" href="#tabs2-tab6" role="tab"
                                             aria-selected="false" data-toggle="tab">승인 전표 조회</a></li>
                                       </ul>
                                       <div id="tabsContent2" class="card-body tab-content p-0">
                                          <div class="tab-pane fade show active" id="tabs2-tab5"
                                             role="tabpanel">
                                             <table class="table bg-white text-dark center ass2 table-striped">
                                                            <thead class="text-white table-bordered tap">
                                                                  <tr class="text-white table-bordered tap">
                                                                    <th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">구매번호????</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">구매수량</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">창고명</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">입고일</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">최종수정일</th>
                                                                  <th class="font-weight-semi-bold border-top-0 py-3 con2">상태</th>
                                                               </tr>
                                                            </thead>
                                                            <tbody>
                                                               <tr>
                                                                  <td class="py-3">121212</td>
                                                                  <td class="py-3">121211</td>
                                                                  <td class="py-3">상품명1</td>
                                                                  <td class="py-3">100</td>
                                                                  <td class="py-3">양품창고</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-3">김민수</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-2 middle">
                                                                     <button type="button" class="btn btn btn-outline-info" style='float: middle;'>
                                                                        승인
                                                                     </button>
                                                     </td>
                                                               </tr>
                                                               <tr>
                                                                  <td class="py-3">121212</td>
                                                                  <td class="py-3">121211</td>
                                                                  <td class="py-3">상품명1</td>
                                                                  <td class="py-3">100</td>
                                                                  <td class="py-3">양품창고</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-3">김민수</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-3">2017-09-03</td>
                                                                  <td class="py-2 middle">
                                                                     <button type="button" class="btn btn btn-outline-info" style='float: middle;'>
                                                                        승인
                                                                     </button>
                                                     </td>
                                                               </tr>
                                                            </tbody>
                                                         </table>
                                          </div>
                                       <div class="tab-pane fade" id="tabs2-tab6" role="tabpanel">
                                          <table class="table bg-white text-dark center ass2 table-striped">
                                                         <thead class="text-white table-bordered tap">
                                                              <tr class="text-white table-bordered tap">
                                                               <th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">구매수량</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">입고일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">담당자명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">승인버튼수정해야..</th>
                                                            </tr>
                                                         </thead>
                                                         <tbody>
                                                            <tr>
                                                               <td class="py-3">12345</td>
                                                               <td class="py-3">상품명1</td>
                                                               <td class="py-3">100</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-3">김민수</td>
                                                               <td class="py-3">입고완료</td>
                                                            </tr>
                                                            <tr>
                                                               <td class="py-3">12345</td>
                                                               <td class="py-3">상품명1</td>
                                                               <td class="py-3">100</td>
                                                               <td class="py-3">2017-09-03</td>
                                                               <td class="py-3">김민수</td>
                                                               <td class="py-3">입고완료</td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                       </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <!-- End Tab Content -->
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