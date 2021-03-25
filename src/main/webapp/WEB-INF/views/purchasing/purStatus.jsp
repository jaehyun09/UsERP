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
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/personnelcodeManagement">인사코드 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="user-edit.html">인사발령 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="user-edit.html">인사카드관리(조회)</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="user-edit.html">급여 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="user-edit.html">부서 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="user-edit.html">퇴사/휴직자 관리</a>
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
                         <a class="side-nav-menu-link" href="${path}/listofemployees">사원목록</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="register.html">휴가신청</a>
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
                    <span class="side-nav-fadeout-on-closed media-body">출고관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="subComponents" class="side-nav-menu side-nav-menu-second-level mb-0">
                	<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/client">거래처</a>
                    </li>
                    <li class="side-nav-menu-item">
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
                <ul id="asd" class="side-nav-menu side-nav-menu-second-level mb-0" style="display: block;">
                	<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/client2">거래처</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/purchproduct">상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/purInvenStatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item active">
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
								<li class="breadcrumb-item"><a href="#">매입 관리</a></li>
								<li class="breadcrumb-item active" aria-current="page">구매 현황</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
									<h2 class="h4">
										구매 현황 <a class="anchorjs-link" href="#example"
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
												aria-controls="pills-result-1" aria-selected="true"> 구매 내역 </a></li>
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-1" role="tab" aria-controls="pills-html-1"
												aria-selected="false"> 구매 입력 </a></li>
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-2" role="tab" aria-controls="pills-html-2"
												aria-selected="false"> 승인 내역 </a></li>
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-3" role="tab" aria-controls="pills-html-3"
												aria-selected="false"> 채무 현황 </a></li>
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
				                                  	<input class="form-control form-control-icon-text" placeholder="구매 내역 검색" type="text" >
				                                </div>
				                                <br>
				                                <!-- 검색창 끝 --> 
				                                
												<div class="row">
													<div class="col">
														<div class="collapse multi-collapse"
															id="multiCollapseExample1">
															
															<div class="bg-white p-4">
																<h3>구매정보</h3>
																<hr>
																<table class="table table-bordered" style="text-align:center">
																	<tbody>
																		<tr>
																			<th align="center">품명</th>
																			<td align="center">소마탄</td>
																			<th align="center">구매처</th>
																			<td align="center">성용(주)</td>
																			<th align="center">담당자</th>
																			<td align="center">홍리나</td>
																		</tr>
																		<tr>
																			<th align="center">판매가</th>
																			<td align="center">200,000</td>
																			<th align="center">수량</th>
																			<td align="center">350</td>
																			<th align="center">외상매출</th>
																			<td align="center">해당없음</td>
																		</tr>
																		<tr>
																			<th align="center">등록일</th>
																			<td align="center">2017-08-15</td>
																			<th align="center">최근수정일</th>
																			<td align="center">2017-08-15</td>
																			<th align="center">출고예정일</th>
																			<td align="center">2017-08-17</td>
																		</tr>
																	</tbody>
																</table>
																<hr>
																<div align = "center">
																	<input type = "submit" class = "btn btn-outline-dark" value = "전표 발송">
																	<input type = "submit" class = "btn btn-outline-dark" value = "수정">
																	<input type = "reset" class = "btn btn-outline-dark" value = "초기화">
																</div>
															</div>
														</div>
													</div>

													<table class="table" style="text-align:center">
														<thead>
															<tr>
																<th class="font-weight-semi-bold border-top-0 py-2">판매번호</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상품명</th>
																<th class="font-weight-semi-bold border-top-0 py-2">거래처</th>
																<th class="font-weight-semi-bold border-top-0 py-2">단가</th>
																<th class="font-weight-semi-bold border-top-0 py-2">수량</th>
																<th class="font-weight-semi-bold border-top-0 py-2">담당자</th>
																<th class="font-weight-semi-bold border-top-0 py-2">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-2">입고예정일</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상태</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="py-3">9</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		설빙수
																	</a>
																</td>
																<td class="py-3">빙그레</td>
																<td class="py-3">2,000</td>
																<td class="py-3">100</td>
																<td class="py-3">이산</td>
																<td class="py-3">2017-06-11</td>
																<td class="py-3">2017-06-12</td>
																<td class="py-3">작성중</td>
															</tr>
															<tr>
																<td class="py-3">8</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		붉닭강정
																	</a>
																</td>
																<td class="py-3">나바나</td>
																<td class="py-3">5,000</td>
																<td class="py-3">120</td>
																<td class="py-3">이산</td>
																<td class="py-3">2017-05-17</td>
																<td class="py-3">2017-05-18</td>
																<td class="py-3">구매전표발송</td>
															</tr>
															<tr>
																<td class="py-3">7</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		메로나
																	</a>
																</td>
																<td class="py-3">네모그룹</td>
																<td class="py-3">3,000</td>
																<td class="py-3">400</td>
																<td class="py-3">김시훈</td>
																<td class="py-3">2017-05-14</td>
																<td class="py-3">2017-05-17</td>
																<td class="py-3">구매승인</td>
															</tr>
														</tbody>
													</table>


												</div>
											</div>

											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												
												<div class="row">
													<table class="table" style="text-align:center">
														<tr>
															<th align="center">품명</th>
															<td align="center">
																<input class = "form-control" type = "text">
															<td>
																<input class = "btn btn-outline-dark" type = "button" value = "조회">
															</td>
															
															<th align="center">구매처</th>
															<td align="center">
																<input class = "form-control" type = "text">
															<td>
																<input class = "btn btn-outline-dark" type = "button" value = "조회">
															</td>
														</tr>
														<tr>
															<th align="center">판매가</th>
															<td align="center" colspan = "2">
																<input class = "form-control" type = "number" min = "1000" step = "100" value = "1000">
															</td>
															<th align="center">수량</th>
															<td align="center" colspan = "2">
																<input class = "form-control"  type = "number" min = "1" step = "1" value = "1">
															</td>
														</tr>
														<tr>
															<th align="center">외상매출</th>
															<td align="center" colspan = "2">
																<select class = "form-control">
																	<option>해당없음</option>
																	<option>해당</option>
																</select>
															</td>
															<th align="center">입고예정일</th>
															<td align="center">
																<input class = "form-control" type = "date">
															</td>
														</tr>
														<tr>
															<td align = "center" colspan = "6">
																<input class = "btn btn-outline-dark" type = "submit" value = "전표 바로 발송">
																<input class = "btn btn-outline-dark" type = "button" value = "구매 등록">
																<input class = "btn btn-outline-dark" type = "button" value = "재입력">
															</td>
														</tr>
													</table>
												</div>
											</div>
											
											
											<div class="tab-pane fade p-4" id="pills-html-2"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												
												<div class="row">
													<table class="table" style="text-align:center">
														<thead>
															<tr>
																<th class="font-weight-semi-bold border-top-0 py-2">구매번호</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상품명</th>
																<th class="font-weight-semi-bold border-top-0 py-2">거래처</th>
																<th class="font-weight-semi-bold border-top-0 py-2">단가</th>
																<th class="font-weight-semi-bold border-top-0 py-2">수량</th>
																<th class="font-weight-semi-bold border-top-0 py-2">담당자</th>
																<th class="font-weight-semi-bold border-top-0 py-2">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-2">처리</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상태</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="py-3">9</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		설빙수
																	</a>
																</td>
																<td class="py-3">빙그레</td>
																<td class="py-3">2,000</td>
																<td class="py-3">100</td>
																<td class="py-3">이산</td>
																<td class="py-3">2017-06-11</td>
																<td class="py-3">
																	<input type = "submit" class = "btn-outline-dark" value = "삭제">
																</td>
																<td class="py-3">반려</td>
															</tr>
															<tr>
																<td class="py-3">8</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		붉닭강정
																	</a>
																</td>
																<td class="py-3">나바나</td>
																<td class="py-3">5,000</td>
																<td class="py-3">120</td>
																<td class="py-3">이산</td>
																<td class="py-3">2017-05-17</td>
																<td class="py-3">
																	<input type = "button" class = "btn-outline-dark" value = "재발송">
																</td>
																<td class="py-3">구매전표발송</td>
															</tr>
															<tr>
																<td class="py-3">7</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		메로나
																	</a>
																</td>
																<td class="py-3">네모그룹</td>
																<td class="py-3">3,000</td>
																<td class="py-3">400</td>
																<td class="py-3">김시훈</td>
																<td class="py-3">2017-05-14</td>
																<td class="py-3">
																	<input type = "button" class = "btn-outline-dark" value = "입고 요청">
																</td>
																<td class="py-3">구매승인</td>
															</tr>
														</tbody>
													</table>
												
												</div>
											</div>
											
											
											<div class="tab-pane fade p-4" id="pills-html-3"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												
												<div class="row">
													<table class="table" style="text-align:center">
														<thead>
															<tr>
																<th class="font-weight-semi-bold border-top-0 py-2">구매번호</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상품명</th>
																<th class="font-weight-semi-bold border-top-0 py-2">거래처</th>
																<th class="font-weight-semi-bold border-top-0 py-2">연락처</th>
																<th class="font-weight-semi-bold border-top-0 py-2">거래대금</th>
																<th class="font-weight-semi-bold border-top-0 py-2">담당자</th>
																<th class="font-weight-semi-bold border-top-0 py-2">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-2">상태</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td class="py-3">9</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		설빙수
																	</a>
																</td>
																<td class="py-3">빙그레</td>
																<td class="py-3">031-475-2855</td>
																<td class="py-3">1,200,000</td>
																<td class="py-3">이산</td>
																<td class="py-3">2017-08-11</td>
																<td class="py-3">미지급</td>
															</tr>
															<tr>
																<td class="py-3">9</td>
																<td class="py-3">
																	<a class="btn" data-toggle="collapse"
																		href="#multiCollapseExample1" 
																		aria-expanded="false"
																		aria-controls="multiCollapseExample1">
																		설빙수
																	</a>
																</td>
																<td class="py-3">낙하산</td>
																<td class="py-3">02-111-2456</td>
																<td class="py-3">4,500,000</td>
																<td class="py-3">이산</td>
																<td class="py-3">2017-08-11</td>
																<td class="py-3">지급완료</td>
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