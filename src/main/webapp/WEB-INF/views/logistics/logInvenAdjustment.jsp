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
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logStatementList">전표 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/logMoveWarehouse">재고 이동</a>
					</li>
					<li class="side-nav-menu-item active">
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

<!-- 재고조정 -->
<div class="content">
			<div class="py-4 px-3 px-md-4">
				<div class="card">
					<div class="card-body">
					<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">물류 관리</a></li>
								<li class="breadcrumb-item active" aria-current="page">재고 조정</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
									<h4 class="h1 text-dark"><b>
										재고 조정 </b><a class="anchorjs-link" href="#example"
											aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h4>
									<div class="mb-3">
										<!-- Nav Classic -->
										<ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark"
											id="pills-tab-1" role="tablist">
											<li class="nav-item border-bottom border-xl-bottom-0  asss bg-light"><a
												class="nav-link d-flex align-items-center py-2 px-3 active"
												id="pills-result-tab-1" data-toggle="pill"
												href="#pills-result-1" role="tab"
												aria-controls="pills-result-1" aria-selected="true">
													재고 조정 내역</a></li>
											<li class="nav-item border-bottom border-xl-bottom-0  asss bg-light"><a
												class="nav-link d-flex align-items-center py-2 px-3"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-1" role="tab" aria-controls="pills-html-1"
												aria-selected="false">재고 조정 등록</a></li>

										</ul>
										<!-- End Nav Classic -->

										<!-- Tab Content -->
										<div class="tab-content bg-lighter" id="pills-tabContent-1">
											<div class="tab-pane fade p-4 show active"
												id="pills-result-1" role="tabpanel"
												aria-labelledby="pills-result-tab-1">
												<table class="table  bg-white text-dark center ass2 table-striped">
													<thead>
														<tr class="text-white table-bordered tap">
															<th class="font-weight-semi-bold border-top-0 py-3 h4">주문번호</th>
															<th class="font-weight-semi-bold border-top-0 py-3 h4">상품명</th>
															<th class="font-weight-semi-bold border-top-0 py-3 h4">창고명</th>
															<th class="font-weight-semi-bold border-top-0 py-3 h4">담당자명</th>
															<th class="font-weight-semi-bold border-top-0 py-3 h4">등록일</th>
															<th class="font-weight-semi-bold border-top-0 py-3 h4">조정 재고</th>
															<th class="font-weight-semi-bold border-top-0 py-3 h4">조정 후 재고</th>
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
											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
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
										<!— End Tab Content —>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- 재고조정 끝 -->    
    
    
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>