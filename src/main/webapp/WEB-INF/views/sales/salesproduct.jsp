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

    <!-- Template -->
    <link rel="stylesheet" href="${project}css/graindashboard.css">
</head>

<body class="has-sidebar has-fixed-sidebar-and-header">

<%@ include file = "../common/header.jsp" %> 
<main class="main">
    <!-- Sidebar Nav -->
    <aside id="sidebar" class="js-custom-scroll side-nav">
        <ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">          

           <!-- UI Components -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#gg">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-themify-favicon"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body">인사 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="gg" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item ">
                        <a class="side-nav-menu-link" href="${path}/personnelCode">인사코드 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/personnelDep">부서 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/personnelAppointment">인사 발령</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/personnelCard">인사 카드</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/personnelSalary">급여</a>
                    </li>
                </ul>
                <!-- End UI Components: subComponents -->
            </li>
            <!-- End UI Components -->
			 <!-- Authentication -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#subPages">
              <span class="side-nav-menu-icon d-flex mr-3">
                <i class="gd-timer"></i>
              </span>
                    <span class="side-nav-fadeout-on-closed media-body">근태 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Pages: subPages -->
                <ul id="subPages" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                         <a class="side-nav-menu-link" href="${path}/abSelect">조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/abApplication">신청</a>
                    </li>
                </ul>
                <!-- End Pages: subPages -->
            </li>
            <!-- End Authentication -->
            <!-- UI Components -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#subComponents">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-money"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body">출고 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="subComponents" class="side-nav-menu side-nav-menu-second-level mb-0" style="display: block;">
                	<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/client">거래처</a>
                    </li>
                    <li class="side-nav-menu-item active">
                        <a class="side-nav-menu-link" href="${path}/salesproduct">상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/salesInvenStatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/salesStatus">판매 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/releaseStatus">출고 현황</a>
                    </li>
                    
                </ul>
                <!-- End UI Components: subComponents -->
            </li>
            <!-- End UI Components -->
            <!-- Utils -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#asd">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-shopping-cart"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body">매입 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Utils: subUtils -->
                <ul id="asd" class="side-nav-menu side-nav-menu-second-level mb-0">
                	
                	<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/client2">거래처</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/purchproduct">상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/purInvenStatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/purStatus">구매 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/receiveStatus">입고 현황</a>
                    </li>
                </ul>
                <!-- End Utils: subUtils -->
            </li>
            <!-- End Users -->
             <!-- UI Components -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#zxc">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-truck"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body">물류 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="zxc" class="side-nav-menu side-nav-menu-second-level mb-0">
                	<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/accountinquiry">거래처 조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/productinquiry">상품 조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/inventorystatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/statementlist">전표 리스트</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/inventorysupply">재고 수불부</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/warehouselist">창고 리스트</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/movewarehouse">창고 이동</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/inventoryadjustment">재고 조정</a>
                    </li> 
                </ul>
                <!-- End UI Components: subComponents -->
            </li>
            <!-- End UI Components -->
             <!-- UI Components -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#subUsers">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-infinite"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body">회계 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="subUsers" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/accountingreport">회계보고서</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/bankManagement">계좌 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/accountManagement">계정 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/statementManagement">전표 조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/bonddebtManagement">채권/채무 조회</a>
                    </li>
                </ul>
                <!-- End UI Components: subComponents -->
            </li>
            <!-- End UI Components -->
        </ul>
    </aside>
    <!-- End Sidebar Nav -->

   <div class="content">
			<div class="py-4 px-3 px-md-4">
				<div class="card">
					<div class="card-body">
					<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">출고 관리</a></li>
								<li class="breadcrumb-item active" aria-current="page">상품</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
									<h2 class="h4">
										상품 <a class="anchorjs-link" href="#example"
											aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h2>
									<div class="mb-3">
										<!-- Nav Classic -->
										<ul class="nav nav-v2 nav-primary d-block d-xl-flex"
											id="pills-tab-1" role="tablist">
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3 active"
												id="pills-result-tab-1" data-toggle="pill"
												href="#pills-result-1" role="tab"
												aria-controls="pills-result-1" aria-selected="true"> 상품 관리 </a></li>
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-1" role="tab" aria-controls="pills-html-1"
												aria-selected="false"> 상품 등록 </a></li>
										</ul>
										<!-- End Nav Classic -->

										<!-- Tab Content -->
										<div class="tab-content bg-lighter" id="pills-tabContent-1">
											<div class="tab-pane fade p-4 show active"
												id="pills-result-1" role="tabpanel"
												aria-labelledby="pills-result-tab-1">
												<!-- 검색창 시작 -->      
			                                	<div class="input-group">
				                                	<div class="input-group-append">
				                                    <i class="gd-search icon-text icon-text-sm"></i>
				                                  	</div>
				                                  	<input class="form-control form-control-icon-text" placeholder="상품명 검색" type="text" >
				                                </div>
				                                <br>
				                                <!-- 검색창 끝 --> 
												<div class="row">
													<div class="col">
														<div class="collapse multi-collapse"
															id="multiCollapseExample1">
															
															<div class="bg-white p-4">
															
																<table class="table table-bordered" style="text-align:center">
																	<tbody>
																		<tr>
																			<td colspan="4" align="center">상품명1</td>
																		</tr>
																		<tr>
																			<th colspan="1" align="center">NO.</td>
																			<td colspan="3" align="center">100001</td>
																		</tr>
																		<tr>
																			<th scope="col">구매단가</td>
																			<td scope="col"><input class="form-control" type="text" placeholder="구매단가"></td>
																			<th scope="col">판매단가</td>
																			<td scope="col">
																				<input class="form-control" type="text" placeholder="판매단가">
																			</td>
																		</tr>
																		<tr>
																			<th colspan="2" align="center">사용상태</td>
																			<td colspan="2" align="center">
																				<div class="form-check form-check-inline">
																			    	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
																			    	<label class="form-check-label" for="inlineRadio1">사용</label>
																			  	</div>
																			  	<div class="form-check form-check-inline">
																			    	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
																			    	<label class="form-check-label" for="inlineRadio2">비사용</label>
																			  	</div>
																			</td>
																		</tr>
																		<tr>
																			<th colspan="2">등록일</th>
																			<td colspan="2">2017-08-30</td>
																		</tr>
																		
																		<tr>
																			<td colspan="4" align="center">
																				<button type="button" class="btn btn-outline-dark">수정완료</button>
																				<input type="reset" class="btn btn-outline-dark">
																			</td>
																		</tr>
																	</tbody>
																</table>
															</div>
														</div>
													</div>

													<table class="table" style="text-align:center">
														<thead>
															<tr>
																<th class="font-weight-semi-bold border-top-0 py-2">상품번호</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상품명</th>
																<th class="font-weight-semi-bold border-top-0 py-2">구매단가</th>
																<th class="font-weight-semi-bold border-top-0 py-2">판매단가</th>
																<th class="font-weight-semi-bold border-top-0 py-2">사용상태</th>
																<th class="font-weight-semi-bold border-top-0 py-2">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-2">수정</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="py-3">100001</td>
																<td class="py-3">상품명1</td>
																<td class="py-3">10000</td>
																<td class="py-3">15000</td>
																<td class="py-3">사용중</td>
																<td class="py-3">2017-08-30</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" role="button"
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		<button type="button" class="btn btn-outline-dark">수정</button>
																		</a>
																</td>
															</tr>
															<tr>
																<td class="py-3">100002</td>
																<td class="py-3">상품명2</td>
																<td class="py-3">9000</td>
																<td class="py-3">13000</td>
																<td class="py-3">사용중</td>
																<td class="py-3">2017-09-12</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample12" role="button"
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		<button type="button" class="btn btn-outline-dark">수정</button>
																		</a>
																</td>
															</tr>
															<tr>
																<td class="py-3">100003</td>
																<td class="py-3">상품명3</td>
																<td class="py-3">22000</td>
																<td class="py-3">30000</td>
																<td class="py-3">사용중</td>
																<td class="py-3">2017-09-17</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample13" role="button"
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		<button type="button" class="btn btn-outline-dark">수정</button>
																		</a>
																</td>
															</tr>
														</tbody>
													</table>


												</div>
												<div class="card-footer d-block d-md-flex align-items-center d-print-none">
					                            <div class="d-flex mb-2 mb-md-0">Showing 1 to 8 of 24 Entries</div>
					
					                            <nav class="d-flex ml-md-auto d-print-none" aria-label="Pagination"><ul class="pagination justify-content-end font-weight-semi-bold mb-0">				<li class="page-item">				<a id="datatablePaginationPrev" class="page-link" href="#!" aria-label="Previous"><i class="gd-angle-left icon-text icon-text-xs d-inline-block"></i></a>				</li><li class="page-item d-none d-md-block"><a id="datatablePaginationPage0" class="page-link active" href="#!" data-dt-page-to="0">1</a></li><li class="page-item d-none d-md-block"><a id="datatablePagination1" class="page-link" href="#!" data-dt-page-to="1">2</a></li><li class="page-item d-none d-md-block"><a id="datatablePagination2" class="page-link" href="#!" data-dt-page-to="2">3</a></li><li class="page-item">				<a id="datatablePaginationNext" class="page-link" href="#!" aria-label="Next"><i class="gd-angle-right icon-text icon-text-xs d-inline-block"></i></a>				</li>				</ul></nav>
					                        </div>
											</div>

											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												<div class="row">
													<table class="table" style="text-align:center">
														<tbody>
																		<tr>
																			<th colspan="1">상품명</th>
																			<td colspan="3" align="center">
																			<input class="form-control" type="text" placeholder="상품명을 입력하세요.">
																			</td>
																		</tr>
																		<tr>
																			<th scope="col">구매단가</td>
																			<td scope="col"><input class="form-control" type="text" placeholder="구매단가를 입력하세요."></td>
																			<th scope="col">판매단가</td>
																			<td scope="col">
																				<input class="form-control" type="text" placeholder="판매단가를 입력하세요.">
																			</td>
																		</tr>
																		<tr>
																			<th colspan="2" align="center">사용상태</td>
																			<td colspan="2" align="center">
																				<div class="form-check form-check-inline">
																			    	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
																			    	<label class="form-check-label" for="inlineRadio1">사용</label>
																			  	</div>
																			  	<div class="form-check form-check-inline">
																			    	<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
																			    	<label class="form-check-label" for="inlineRadio2">비사용</label>
																			  	</div>
																			</td>
																		</tr>
																		<tr>
																			<th colspan="2">등록일</th>
																			<td colspan="2"><input class="form-control" type="text" placeholder="등록일을 입력하세요."></td>
																		</tr>
																		
																		<tr>
																			<td colspan="4" align="center">
																				<button type="button" class="btn btn-outline-dark">상품 등록</button>
																				<input type="reset" class="btn btn-outline-dark">
																			</td>
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
		</div>
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>