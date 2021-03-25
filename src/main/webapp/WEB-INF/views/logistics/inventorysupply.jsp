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
                <ul id="subComponents" class="side-nav-menu side-nav-menu-second-level mb-0">
                	<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/client">거래처</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="${path}/salesproduct">상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link" href="#">재고 현황</a>
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
                        <a class="side-nav-menu-link" href="#">재고 현황</a>
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
            <!-- End Utils -->
             <!-- Users -->
            <li class="side-nav-menu-item side-nav-has-menu active side-nav-opened">
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

                <!-- Users: subUsers -->
                <ul id="zxc" class="side-nav-menu side-nav-menu-second-level mb-0" style="display: block;">
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
                    <li class="side-nav-menu-item active">
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
                <!-- End Users: subUsers -->
            </li>
            <!-- End Users -->
           
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
                        <a class="side-nav-menu-link" href="${path}/statementManagement">전표 관리</a>
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
								<li class="breadcrumb-item"><a href="#">물류 관리</a></li>
								<li class="breadcrumb-item active" aria-current="page">재고 수불부</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
									<h2 class="h4">
										재고 수불부<a class="anchorjs-link" href="#example"
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
												aria-controls="pills-result-1" aria-selected="true">
													재고 수불부 검색</a></li>
										</ul>
										<!-- End Nav Classic -->

										<!-- Tab Content -->
										<div class="tab-content bg-lighter" id="pills-tabContent-1">
											<div class="tab-pane fade p-4 show active"
												id="pills-result-1" role="tabpanel"
												aria-labelledby="pills-result-tab-1">
												<table class="table">
													<thead>
														<tr>
															<th class="font-weight-semi-bold border-top-0 py-2">기준일자</th>
															<th class="font-weight-semi-bold border-top-0 py-2">
																<input class="form-control" type="text" placeholder="" value="2021-03-21">
															</th>
															<th> ~ </th>
															<th class="font-weight-semi-bold border-top-0 py-2">
																<input class="form-control" type="text" placeholder="" value="2021-03-21">
															</th>
															<th class="font-weight-semi-bold border-top-0 py-2">
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
															<td>
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
																<input type="button" class="btn btn-outline-dark" value="확인" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
																<input type="button" class="btn btn-outline-dark" value="출력" >
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="collapse" id="collapseExample">
												<div class="bg-white p-4">
													<table class="table">
														<tr align="center">
															<td colspan="5">기간 : 2021-03-21 ~ 2021-03-21</td>
														</tr>
														<tr align="center">
															<td colspan="5">상품명 : 상품01(상품코드)</td>
														</tr>
														<tr align="center">
															<td>날짜</td>
															<td>분류</td>
															<td>수량증가</td>
															<td>수량감소</td>
															<td>재고수량</td>
														</tr>
														<tr align="center">
															<td>2021-03-21</td>
															<td>재고조정</td>
															<td>0</td>
															<td>10</td>
															<td>90</td>
														</tr>
														<tr align="center">
															<td>2021-03-21</td>
															<td>창고이동</td>
															<td>0</td>
															<td>10</td>
															<td>80</td>
														</tr>
													</table>
													<br>
													<table class="table">
														<tr align="center">
															<td>총 수량증가</td>
															<td>총 수량감소</td>
															<td>총 재고수량</td>
														</tr>
														<tr align="center">
															<td>0</td>
															<td>20</td>
															<td>80</td>
														</tr>
													</table>
												</div>
											</div>
											
											
											
											
<!---------------------------------------------------------------------- 여기서부터 뭔데? ------------------------>
											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												<table class="table">
													<thead>
														<tr>
															<th class="font-weight-semi-bold border-top-0 py-2">#</th>
															<th class="font-weight-semi-bold border-top-0 py-2">First</th>
															<th class="font-weight-semi-bold border-top-0 py-2">Last</th>
															<th class="font-weight-semi-bold border-top-0 py-2">Handle</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="py-3">1</td>
															<td class="py-3">Mark</td>
															<td class="py-3">Otto</td>
															<td class="py-3">@mdo</td>
														</tr>
														<tr>
															<td class="py-3">2</td>
															<td class="py-3">Jacob</td>
															<td class="py-3">Thornton</td>
															<td class="py-3">@fat</td>
														</tr>
														<tr>
															<td class="py-3">3</td>
															<td class="py-3">Larry</td>
															<td class="py-3">the Bird</td>
															<td class="py-3">@twitter</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="tab-pane fade p-4" id="pills-html-2"
												role="tabpanel" aria-labelledby="pills-html-tab-2">
												<table class="table">
													<thead>
														<tr>
															<th class="font-weight-semi-bold border-top-0 py-2">#</th>
															<th class="font-weight-semi-bold border-top-0 py-2">First</th>
															<th class="font-weight-semi-bold border-top-0 py-2">Last</th>
															<th class="font-weight-semi-bold border-top-0 py-2">Handle</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="py-3">1</td>
															<td class="py-3">Mark</td>
															<td class="py-3">Otto</td>
															<td class="py-3">@mdo</td>
														</tr>
														<tr>
															<td class="py-3">2</td>
															<td class="py-3">Jacob</td>
															<td class="py-3">Thornton</td>
															<td class="py-3">@fat</td>
														</tr>
														<tr>
															<td class="py-3">3</td>
															<td class="py-3">Larry</td>
															<td class="py-3">the Bird</td>
															<td class="py-3">@twitter</td>
														</tr>
													</tbody>
												</table>
											</div>
											<div class="tab-pane fade p-4" id="pills-html-3"
												role="tabpanel" aria-labelledby="pills-html-tab-3">
												<table class="table">
													<thead>
														<tr>
															<th class="font-weight-semi-bold border-top-0 py-2">#</th>
															<th class="font-weight-semi-bold border-top-0 py-2">First</th>
															<th class="font-weight-semi-bold border-top-0 py-2">Last</th>
															<th class="font-weight-semi-bold border-top-0 py-2">Handle</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="py-3">1</td>
															<td class="py-3">Mark</td>
															<td class="py-3">Otto</td>
															<td class="py-3">@mdo</td>
														</tr>
														<tr>
															<td class="py-3">2</td>
															<td class="py-3">Jacob</td>
															<td class="py-3">Thornton</td>
															<td class="py-3">@fat</td>
														</tr>
														<tr>
															<td class="py-3">3</td>
															<td class="py-3">Larry</td>
															<td class="py-3">the Bird</td>
															<td class="py-3">@twitter</td>
														</tr>
													</tbody>
												</table>
											</div>
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
    
    
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>