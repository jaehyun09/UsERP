<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../setting.jsp"%>
<head>
<!-- Title -->
<title>Users | Graindashboard UI Kit</title>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Favicon -->
<link rel="shortcut icon" href="${project}img/favicon.ico">
<style>
	.bluetext {
		color : pink; /* 글자색 */
	}
	
</style>
<!-- Template -->
<link rel="stylesheet" href="${project}css/graindashboard.css">
<link rel="stylesheet" href="${project}css/board.css">
</head>

<body class="has-sidebar has-fixed-sidebar-and-header">

	<%@ include file="../common/header.jsp"%>
	<main class="main">
		<!-- Sidebar Nav -->
		<aside id="sidebar" class="js-custom-scroll side-nav">
			<ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">

				<!-- UI Components -->
				<li class="side-nav-menu-item side-nav-has-menu"><a
					class="side-nav-menu-link media align-items-center" href="#"
					data-target="#gg"> <span class="side-nav-menu-icon d-flex mr-3">
							<i class="gd-themify-favicon"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">인사 관리</span> <span
						class="side-nav-control-icon d-flex"> <i
							class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span> <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a> <!-- UI Components: subComponents -->
					 <ul id="gg" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item ">
                        <a class="side-nav-menu-link ass2" href="${path}/personnelCode">인사코드 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/personnelDep">부서 관리</a>
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
                </ul> <!-- End UI Components: subComponents --></li>
				<!-- End UI Components -->
				
				<!-- Authentication -->
				<li class="side-nav-menu-item side-nav-has-menu"><a
					class="side-nav-menu-link media align-items-center" href="#"
					data-target="#subPages"> <span
						class="side-nav-menu-icon d-flex mr-3"> <i class="gd-timer"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">근태 관리</span> <span
						class="side-nav-control-icon d-flex"> <i
							class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span> <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a> <!-- Pages: subPages -->
					<ul id="subPages" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                         <a class="side-nav-menu-link ass2" href="${path}/abSelect">조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/abApplication">신청</a>
                    </li>
                </ul> <!-- End Pages: subPages --></li>
				<!-- End Authentication -->
				<!-- UI Components -->
				<li class="side-nav-menu-item side-nav-has-menu"><a
					class="side-nav-menu-link media align-items-center" href="#"
					data-target="#subComponents"> <span
						class="side-nav-menu-icon d-flex mr-3"> <i class="gd-money"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">출고 관리</span> <span
						class="side-nav-control-icon d-flex"> <i
							class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span> <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a> <!-- UI Components: subComponents -->
					<ul id="subComponents"
						class="side-nav-menu side-nav-menu-second-level mb-0">
						<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/client">거래처</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/salesproduct">상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/salesInvenStatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/salesStatus">판매 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/releaseStatus">출고 현황</a>
                    </li>
					</ul> <!-- End UI Components: subComponents --></li>
				<!-- End UI Components -->
				<!-- Utils -->
				<li class="side-nav-menu-item side-nav-has-menu"><a
					class="side-nav-menu-link media align-items-center" href="#"
					data-target="#asd"> <span
						class="side-nav-menu-icon d-flex mr-3"> <i
							class="gd-shopping-cart"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">매입 관리</span> <span
						class="side-nav-control-icon d-flex"> <i
							class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span> <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a> <!-- Utils: subUtils -->
					<ul id="asd" class="side-nav-menu side-nav-menu-second-level mb-0">
						<li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/client2">거래처</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/purchproduct">상품</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/purInvenStatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/purStatus">구매 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/receiveStatus">입고 현황</a>
                    </li>
					</ul> <!-- End Utils: subUtils --></li>
				<!-- End Utils -->
				<!-- UI Components -->
				<li class="side-nav-menu-item side-nav-has-menu"><a
					class="side-nav-menu-link media align-items-center" href="#"
					data-target="#zxc"> <span
						class="side-nav-menu-icon d-flex mr-3"> <i class="gd-truck"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">물류 관리</span> <span
						class="side-nav-control-icon d-flex"> <i
							class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span> <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a> <!-- UI Components: subComponents -->
					<ul id="zxc" class="side-nav-menu side-nav-menu-second-level mb-0">
						<li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/foundationcode">기초 코드</a>
                       </li>
                       <li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/statementlist">전표 관리</a>
                       </li>
                       <li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/inventorystatus">재고 현황</a>
                       </li>
                       <li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/movewarehouse">재고 이동</a>
                       </li>
                       <li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/inventoryadjustment">재고 조정</a>
                       </li>    
                       <li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/inventorysupply">재고 수불부</a>
                       </li>
                       <li class="side-nav-menu-item">
                           <a class="side-nav-menu-link ass2" href="${path}/warehouselist">창고 현황</a>
                       </li>   
					</ul> <!-- End UI Components: subComponents --></li>
				<!-- End UI Components -->
				<!-- Users -->
				<li
					class="side-nav-menu-item side-nav-has-menu active side-nav-opened">
					<a class="side-nav-menu-link media align-items-center" href="#"
					data-target="#subUsers"> <span
						class="side-nav-menu-icon d-flex mr-3"> <i
							class="gd-infinite"></i>
					</span> <span class="side-nav-fadeout-on-closed media-body asss">회계 관리</span> <span
						class="side-nav-control-icon d-flex"> <i
							class="gd-angle-right side-nav-fadeout-on-closed"></i>
					</span> <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
				</a> <!-- Users: subUsers -->
					<ul id="subUsers"
						class="side-nav-menu side-nav-menu-second-level mb-0"
						style="display: block;">
						<li class="side-nav-menu-item active"><a
							class="side-nav-menu-link ass2" href="${path}/accountingreport">회계보고서</a>
						</li>
						<li class="side-nav-menu-item"><a class="side-nav-menu-link ass2"
							href="${path}/bankManagement">계좌 관리</a></li>
						<li class="side-nav-menu-item"><a class="side-nav-menu-link ass2"
							href="${path}/accountManagement">계정 관리</a></li>
						<li class="side-nav-menu-item"><a class="side-nav-menu-link ass2"
							href="${path}/statementManagement">전표 관리</a></li>
						<li class="side-nav-menu-item"><a class="side-nav-menu-link ass2"
							href="${path}/bonddebtManagement">채권/채무 조회</a></li>
					</ul> <!-- End Users: subUsers -->
				</li>
				<!-- End Users -->
			</ul>
		</aside>
		<!-- End Sidebar Nav -->

		<div class="content">
			<div class="py-4 px-3 px-md-4">
				<div class="card">

					<div class="card-body">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">회계 관리</a></li>
								<li class="breadcrumb-item active" aria-current="page">회계보고서</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
								
									
									<h4 class="h4">
										회계 보고서 <a class="anchorjs-link" href="#example"
											aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h4>
									
									<div class="mb-3">
										<!-- Nav Classic -->
										<ul class="nav nav-v2 nav-primary d-block d-xl-flex h4"
											id="pills-tab-1" role="tablist">
											<li class="nav-item border-bottom border-xl-bottom-1 h4"><a
												class="nav-link d-flex align-items-center py-2 px-3 active"
												id="pills-result-tab-1" data-toggle="pill"
												href="#pills-result-1" role="tab"
												aria-controls="pills-result-1" aria-selected="true"
												>재무상태표</a>
											</li>
											<li class="nav-item border-bottom border-xl-bottom-1 h4"><a
												class="nav-link d-flex align-items-center py-2 px-3 h4"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-1" role="tab" aria-controls="pills-html-1"
												aria-selected="false">손익계산서</a></li>
										</ul>
										<!-- End Nav Classic -->

										<!-- Tab Content -->
										
										<div class="tab-content bg-lighter border border-primary" id="pills-tabContent-1">
											<div class="tab-pane fade p-4 show active"
												id="pills-result-1" role="tabpanel"
												aria-labelledby="pills-result-tab-1">
												제 1기 2021.03.31 현재<br> <br>
												<div class="bg-white">
												<table class="table table-bordered" style="text-align: center">
													<tbody>
														<tr class=" text-dark" style="background-color:#B5D3FF">
														
															<th class="font-weight-semi-bold border-top-0 py-2">과목</th>
															<th class="font-weight-semi-bold border-top-0 py-2"
																colspan="2">금액</th>
															<th class="font-weight-semi-bold border-top-0 py-2">과목</th>
															<th class="font-weight-semi-bold border-top-0 py-2"
																colspan="2">금액</th>
																
														</tr>
													
														<tr>
															<td class="py-3">보통예금</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
															<td class="py-3">외상매입금</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															<td class="py-3">외상매출금</td>
															<td class="py-3">0</td>
															<td class="py-3">0</td>
															<td class="py-3">지급어음</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															<td class="py-3">받을어음</td>
															<td class="py-3">0</td>
															<td class="py-3">0</td>
															<td class="py-3">미지급금</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															<td class="py-3">미수금</td>
															<td class="py-3">0</td>
															<td class="py-3">0</td>
															<td class="py-3">예수금</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															<td class="py-3">상품</td>
															<td class="py-3">0</td>
															<td class="py-3">0</td>
															<td class="py-3">자본금</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															<td class="py-3">자산총계</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
															<td class="py-3">부채와 자본총계</td>
															<td class="py-3"></td>
															<td class="py-3">0</td>
														</tr>
														
													</tbody>
												</table>
											</div>
											</div>
											
											
											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												2021.03.31 ~ 2021.12.31(단위 : 천원) <br> <br>
												<div class="bg-white">
												<table class="table table-bordered" style="text-align: center">
													<tbody>
														<tr class="text-dark"style="background-color:#B5D3FF">
															<th class="font-weight-semi-bold border-top-0 py-2"
																colspan="2">과목</th>
															<th class="font-weight-semi-bold border-top-0 py-2">금액</th>
														</tr>
														<tr>
															<td class="py-3" rowspan="5" style="vertical-align: middle">영업손익</td>
															<td class="py-3">매출액</td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															
															<td class="py-3">매출원가</td>
															<td class="py-3">0</td>
														<tr>
															
															<td class="py-3">매출총이익</td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															
															<td class="py-3">판매비와 관리비</td>
															<td class="py-3">0</td>
														</tr>
														<tr>
															
															<td class="py-3">영업이익</td>
															<td class="py-3">0</td>
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

	<%@ include file="../common/footer.jsp"%>
	<script src="${project}js/graindashboard.js"></script>
	<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>