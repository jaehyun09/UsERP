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
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu side-nav-opened">
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
<!-- b -->		<ul id="subComponents" class="side-nav-menu side-nav-menu-second-level mb-0" style="display:block;">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/salesBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/salesInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item active">
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
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu">
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
<!-- b -->		<ul id="zxc" class="side-nav-menu side-nav-menu-second-level mb-0">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logBasicReg">기초 코드</a>
					</li>
					<li class="side-nav-menu-item">
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
                        <li class="breadcrumb-item"><a href="#">판매 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">판매 현황</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>판매 현황</b>
                              <a class="anchorjs-link" href="#example"
                                 aria-label="Anchor" data-anchorjs-icon="#"></a>
                           </h4>
                           <div class="mb-3">
                              <!-- Nav Classic -->
                              <ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark"
                                 id="pills-tab-1" role="tablist">
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light " ><a
                                    class="nav-link d-flex align-items-center py-2 px-3 active"
                                    id="pills-result-tab-1" data-toggle="pill"
                                    href="#pills-result-1" role="tab"
                                    aria-controls="pills-result-1" aria-selected="false">판매 내역</a></li>
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light"><a
                                    class="nav-link d-flex align-items-center py-2 px-3"
                                    id="pills-html-tab-1" data-toggle="pill"
                                    href="#pills-html-1" role="tab" aria-controls="pills-html-1"
                                    aria-selected="false">판매 전표 등록</a></li>
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light  ">
									<a class="nav-link d-flex align-items-center py-2 px-3"
									id="pills-html-tab-2" data-toggle="pill"
									href="#pills-html-2" role="tab" aria-controls="pills-html-2"
									aria-selected="false">승인 내역</a>
								</li> 
                              </ul>
                              <!-- End Nav Classic -->

                              <!-- Tab Content -->
                              <div class="tab-content bg-lighter " id="pills-tabContent-1">
                                 <div class="tab-pane fade p-4 show active"
                                    id="pills-result-1" role="tabpanel"
                                    aria-labelledby="pills-result-tab-1">
                                    <div class="row">
                                       <div class="col">
                                       <table class="table  bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">판매번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">거래처명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">단가</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">수량</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">담당자</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">상태</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td class="py-3 middle">10</td>
                                                <td class="py-3 middle">은희네국밥</td>
                                                <td class="py-3 middle">돼지국밥</td>
                                                <td class="py-3 middle">10000</td>
                                                <td class="py-3 middle">10</td>
                                                <td class="py-3 middle">강재현</td>
                                                <td class="py-3 middle">2021-03-27</td>
                                                <td class="py-3 middle">승인완료</td>
                                             </tr>
                                             <tr>
                                                <td class="py-3 middle">11</td>
                                                <td class="py-3 middle">명재네버거</td>
                                                <td class="py-3 middle">치즈버거</td>
                                                <td class="py-3 middle">20000</td>
                                                <td class="py-3 middle">20</td>
                                                <td class="py-3 middle">김민수</td>
                                                <td class="py-3 middle">2021-03-28</td>
                                                <td class="py-3 middle">승인불가</td>
                                             </tr>
                                             <tr>
                                                <td class="py-3 middle">12</td>
                                                <td class="py-3 middle">민수네김밥</td>
                                                <td class="py-3 middle">참치김밥</td>
                                                <td class="py-3 middle">30000</td>
                                                <td class="py-3 middle">30</td>
                                                <td class="py-3 middle">최유성</td>
                                                <td class="py-3 middle">2021-03-29</td>
                                                <td class="py-3 middle">승인대기</td>
                                             </tr>
                                          </tbody>
                                       </table>
                                    </div>
                                 </div>
                                 </div>

                                 <div class="tab-pane fade p-4" id="pills-html-1"
                                    role="tabpanel" aria-labelledby="pills-html-tab-1">
                                    <div class="row">
                                    <!-- 테스트 -->
                                    <div class="col">
                                         	<div class="bg-white p-2">
                                                <table class="table bg-white text-dark center ass2">
		                                          <tr class="text-white table-bordered tap">
		                                             <th colspan="3"> 판매 전표 등록 </th>
		                                          </tr>
	                                          		<tr>
														<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
															colspan="2" style="vertical-align: middle;">거래처명</td>
														<td class="font-weight-semi-bold border-top-0 py-2"
															colspan="2"><input class="form-control" type="text"
															placeholder="거래처명을 입력하세요"></td>
													</tr>
														<tr>
															<td class="py-3 text-dark" colspan="2"style="vertical-align: middle;"><b>상품명</b></td>
															<td class="py-3" colspan="2"><input
																class="form-control" type="text"
																placeholder="상품명을 입력하세요"></td>
														</tr>
														<tr>
					                                    <td class="py-3 text-dark" colspan="2"style="vertical-align: middle;"><b>단가</b></td>
					                                       <td class="py-3" colspan="2"><input
																class="form-control" type="text"
																placeholder="단가를 입력하세요"></td>
					                                    </tr>
														<tr>
															<td class="py-3" colspan="2" style="vertical-align: middle;"><b>수량</b></td>
															<td class="py-3" colspan="2"><input
																class="form-control" type="text" placeholder="수량을 입력하세요"></td>
														</tr>
														<tr>
															<td class="py-3" colspan="2" style="vertical-align: middle; "><b>담당자</b></td>
															<td class="py-3" colspan="2"><input
																class="form-control" type="text"
																placeholder="담당자를 입력하세요"></td>
														</tr>
													</tbody>
												</table>
                                                </div>
                                                     <div align=center>
                                                   <button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                                                   <button type="button" type="reset" class="btn btn-outline-info">재입력</button>                                  
                                       </div>
									</div>
                                    </div>
                                   </div> 
                              
                                   <div class="tab-pane fade p-4" id="pills-html-2"
                                    role="tabpanel" aria-labelledby="pills-html-tab-2">
                                    <table class="table  bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">판매번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">거래처명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">단가</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">수량</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">담당자</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">상태</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td class="py-3 middle">10</td>
                                                <td class="py-3 middle">은희네국밥</td>
                                                <td class="py-3 middle">돼지국밥</td>
                                                <td class="py-3 middle">10000</td>
                                                <td class="py-3 middle">10</td>
                                                <td class="py-3 middle">강재현</td>
                                                <td class="py-3 middle">2021-03-27</td>
                                                <td class="py-3 middle">승인완료</td>
                                             </tr>
                                             <tr>
                                                <td class="py-3 middle">11</td>
                                                <td class="py-3 middle">명재네버거</td>
                                                <td class="py-3 middle">치즈버거</td>
                                                <td class="py-3 middle">20000</td>
                                                <td class="py-3 middle">20</td>
                                                <td class="py-3 middle">김민수</td>
                                                <td class="py-3 middle">2021-03-28</td>
                                                <td class="py-3 middle">승인불가</td>
                                             </tr>
                                             <tr>
                                                <td class="py-3 middle">12</td>
                                                <td class="py-3 middle">민수네김밥</td>
                                                <td class="py-3 middle">참치김밥</td>
                                                <td class="py-3 middle">30000</td>
                                                <td class="py-3 middle">30</td>
                                                <td class="py-3 middle">최유성</td>
                                                <td class="py-3 middle">2021-03-29</td>
                                                <td class="py-3 middle">승인대기</td>
                                             </tr>
                                          </tbody>
                                       </table>
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
 
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>