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
<link rel="stylesheet" href="${project}css/board.css">
<!-- Template -->
<link rel="stylesheet" href="${project}css/graindashboard.css">
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
				</a> 
				<!-- UI Components: subComponents -->
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
                </ul>
                 <!-- End UI Components: subComponents --></li>
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
                </ul><!-- End Pages: subPages --></li>
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
                        <a class="side-nav-menu-link ass2" href="${path}/accountinquiry">거래처 조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/productinquiry">상품 조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/inventorystatus">재고 현황</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/statementlist">전표 리스트</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/inventorysupply">재고 수불부</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/warehouselist">창고 리스트</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/movewarehouse">창고 이동</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/inventoryadjustment">재고 조정</a>
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
						class="side-nav-menu side-nav-menu-second-level mb-0 "
						style="display: block;">
						<li class="side-nav-menu-item "><a class="side-nav-menu-link ass2"
							href="${path}/accountingreport">회계보고서</a></li>
						<li class="side-nav-menu-item"><a class="side-nav-menu-link ass2"
							href="${path}/bankManagement">계좌 관리</a></li>
						<li class="side-nav-menu-item"><a class="side-nav-menu-link ass2"
							href="${path}/accountManagement">계정 관리</a></li>
						<li class="side-nav-menu-item active"><a
							class="side-nav-menu-link ass2" href="${path}/statementManagement">전표
								관리</a></li>
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
								<li class="breadcrumb-item active" aria-current="page">전표
									관리</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
									<h4 class="h1 text-dark"><b>
										전표 관리 </b><a class="anchorjs-link" href="#example"
											aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h4>
									<div class="px-3">
										<!-- Nav Classic -->
										<ul class="nav nav-tabs"
											id="pills-tab-1" role="tablist">
											<li class="nav-item  text-white h4 tap" ><a
												class="nav-link   py-2 px-3 active h4"
												id="pills-result-tab-1" data-toggle="pill"
												href="#pills-result-1" role="tab"
												aria-controls="pills-result-1" aria-selected="true"> 전체
													전표 조회</a></li>
											<li class="nav-item  text-white h4 tap"><a
												class="nav-link d-flex align-items-center py-2 px-3 h4"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-1" role="tab" aria-controls="pills-html-1"
												aria-selected="false">미승인 전표 조회 </a></li>

											<li class="nav-item text-white h4 tap"><a
												class="nav-link d-flex align-items-center py-2 px-3 h4"
												id="pills-html-tab-2" data-toggle="pill"
												href="#pills-html-2" role="tab" aria-controls="pills-html-2"
												aria-selected="false">승인 전표 조회 </a></li>
											<li class="nav-item  text-white h4 tap" ><a
												class="nav-link d-flex align-items-center py-2 px-3 h4"
												id="pills-html-tab-3" data-toggle="pill"
												href="#pills-html-3" role="tab" aria-controls="pills-html-3"
												aria-selected="false">전표 등록 </a></li>
										</ul>
										<!-- End Nav Classic -->

										<!-- Tab Content -->
										<div class="tab-content bg-lighter " id="pills-tabContent-1">
											<div class="tab-pane fade p-4 show active"
												id="pills-result-1" role="tabpanel"
												aria-labelledby="pills-result-tab-1">
												<div class="row">
													<div class="col">
														<div class="collapse multi-collapse"
															id="multiCollapseExample1">
																<table class="table table-bordered bg-white text-dark ass2 center">
																	
																	<tbody>
																		<tr class="text-white con">
																			<th colspan="4">입금전표</th>
																		</tr>
																		<tr>
																			<th colspan="1">NO.</th>
																			<td colspan="3">1234</td>
																		</tr>
																		<tr>
																			<th scope="col">과목</th>
																			<td scope="col">복리후생비</td>
																			<th scope="col">항목</th>
																			<td scope="col">식대</td>
																		</tr>
																		<tr>
																			<th colspan="1">연결ID</th>
																			<td colspan="3">음?</td>

																		</tr>
																		<tr>
																			<th colspan="1">계정ID</th>
																			<td colspan="3">??</td>
																		</tr>
																		<tr>
																			<th colspan="3">적요</th>
																			<th>금액</th>

																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<th colspan="3">합계</th>
																			<td>30,000</td>
																		</tr>
																	</tbody>
																</table><br><br><br>
														</div>
													</div>
													<table class="table  bg-white text-dark center ass2"   >
														<tbody>
															<tr class="text-white table-bordered tap">
																<th class="font-weight-semi-bold border-top-0 py-3 h4">전표번호</th>
																<th class="font-weight-semi-bold border-top-0 py-3 h4">전표종류</th>
																<th class="font-weight-semi-bold border-top-0 py-3 h4">연결
																	ID</th>
																<th class="font-weight-semi-bold border-top-0 py-3 h4">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-3 h4 ">승인상태</th>
															</tr>
														
														
															<tr  class="tablein">
																<td class="py-1">
																	<p>
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample1" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">1234</a>
																	</p>
																</td>
																<td class="py-1 middle" >입금전표</td>
																<td class="py-1 middle">Otto</td>
																<td class="py-1 middle" >21-03-21</td>
																<td class="py-1 middle">대기중</td>
															</tr>
															<tr>
																<td class="py-1">
																	<p>
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample12" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">1235</a>
																	</p>
																</td>
																<td class="py-1 middle">출금전표</td>
																<td class="py-1 middle">Thornton</td>
																<td class="py-1 middle">21-03-21</td>
																<td class="py-1 middle">대기중</td>
															</tr>
															<tr class="tablein">
																<td class="py-1">
																	<p>
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample13" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">0987</a>
																	</p>
																</td>
																<td class="py-1 middle">입금전표</td>
																<td class="py-1 middle">Otto</td>
																<td class="py-1 middle">21-03-21</td>
																<td class="py-1 middle">승인완료</td>
															</tr>
															<tr>
																<td class="py-1" >
																	<p >
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample14" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">0988</a>
																	</p>
																</td>
																<td class="py-1 middle">출금전표</td>
																<td class="py-1 middle">Thornton</td>
																<td class="py-1 middle">21-03-21</td>
																<td class="py-1 middle">승인완료</td>
															</tr>
														</tbody>
													</table>


												</div>
											</div>

											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												<div class="row">
													<div class="col">
														<div class="collapse multi-collapse"
															id="multiCollapseExample2">
															<div class="bg-white p-2">
																<table class="table table-bordered center">
																	<tbody>
																		<tr class="text-dark con">
																			<th colspan="4">입금전표</th>
																		</tr>
																		<tr>
																			<th colspan="1">NO.</th>
																			<td colspan="3">1234</td>
																		</tr>
																		<tr>
																			<th scope="col">과목</th>
																			<td scope="col">복리후생비</td>
																			<th scope="col">항목</th>
																			<td scope="col">식대</td>
																		</tr>
																		<tr>
																			<th colspan="1">연결ID</th>
																			<td colspan="3">음?</td>

																		</tr>
																		<tr>
																			<th colspan="1">계정ID</th>
																			<td colspan="3">??</td>
																		</tr>
																		<tr>
																			<th colspan="3">적요</th>
																			<th>금액</th>

																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<th colspan="3">합계</th>
																			<td>30,000</td>
																		</tr>
																	</tbody>
																</table>
																<button type="button" class="btn btn-outline-dark"
																	style='float: right;'>승인거부</button>
																<button type="button" class="btn btn-outline-dark"
																	style='float: right;'>승인하기</button>
															</div>
														</div>
													</div>
													<table class="table table-bordered bg-white" style="text-align: center">
														<tbody>
															<tr class="text-white"style="background-color:#0000ff">
																<th class="font-weight-semi-bold border-top-0 py-4">전표번호</th>
																<th class="font-weight-semi-bold border-top-0 py-4">전표종류</th>
																<th class="font-weight-semi-bold border-top-0 py-4">연결
																	ID</th>
																<th class="font-weight-semi-bold border-top-0 py-4">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-4">승인상태</th>
															</tr>
														
														
															<tr>
																<td class="py-1">
																	<p style="vertical-align: middle">
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample2" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">1234</a>
																	</p>
																</td>
																<td class="py-1" style="vertical-align: middle">입금전표</td>
																<td class="py-1" style="vertical-align: middle">Otto</td>
																<td class="py-1" style="vertical-align: middle">21-03-21</td>
																<td class="py-1" style="vertical-align: middle">대기중</td>
															</tr>
															<tr>
																<td class="py-1">
																	<p>
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample21" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">1235</a>
																	</p>
																</td>
																<td class="py-1" style="vertical-align: middle">출금전표</td>
																<td class="py-1" style="vertical-align: middle">Thornton</td>
																<td class="py-1" style="vertical-align: middle">21-03-21</td>
																<td class="py-1" style="vertical-align: middle">대기중</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="tab-pane fade p-4" id="pills-html-2"
												role="tabpanel" aria-labelledby="pills-html-tab-2">
												<div class="row">
													<div class="col">
														<div class="collapse multi-collapse"
															id="multiCollapseExample3">
															
																<table class="table table-bordered bg-white"
																	style="text-align: center">
																	<tbody>
																		<tr class="text-dark"style="background-color:#B5D3FF">
																			<th colspan="4">입금전표</th>
																		</tr>
																		<tr>
																			<th colspan="1">NO.</th>
																			<td colspan="3">1234</td>
																		</tr>
																		<tr>
																			<th scope="col">과목</th>
																			<td scope="col">복리후생비</td>
																			<th scope="col">항목</th>
																			<td scope="col">식대</td>
																		</tr>
																		<tr>
																			<th colspan="2">연결ID</th>
																			<td colspan="2">음?</td>

																		</tr>
																		<tr>
																			<th colspan="2">계정ID</th>
																			<td colspan="2">??</td>
																		</tr>
																		<tr>
																			<th colspan="3">적요</th>
																			<th>금액</th>

																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<td colspan="3">회계팀직원 저녁(홍길동외 5인) 5,000원 X 6명</td>
																			<td>30,000</td>
																		</tr>
																		<tr>
																			<th colspan="3">합계</th>
																			<td>30,000</td>
																		</tr>
																	</tbody>
																</table>
														</div>
													</div>
													<table class="table table-bordered bg-white" style="text-align: center">
														<tbody>
															<tr class="text-dark"style="background-color:#B5D3FF">
																<th class="font-weight-semi-bold border-top-0 py-2 h3" >전표번호</th>
																<th class="font-weight-semi-bold border-top-0 py-2 h3">전표종류</th>
																<th class="font-weight-semi-bold border-top-0 py-2 h3">연결
																	ID</th>
																<th class="font-weight-semi-bold border-top-0 py-2 h3">등록일</th>
																<th class="font-weight-semi-bold border-top-0 py-2 h3">승인상태</th>
															</tr>
														
														
															<tr>
																<td class="py-3">
																	<p>
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample3" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">0987</a>
																	</p>
																</td>
																<td class="py-3">입금전표</td>
																<td class="py-3">Otto</td>
																<td class="py-3">21-03-21</td>
																<td class="py-3">승인완료</td>
															</tr>
															<tr>
																<td class="py-3">
																	<p>
																		<a class="btn" data-toggle="collapse"
																			href="#multiCollapseExample31" role="button"
																			aria-expanded="false"
																			aria-controls="multiCollapseExample1">0988</a>
																	</p>
																</td>
																<td class="py-3">출금전표</td>
																<td class="py-3">Thornton</td>
																<td class="py-3">21-03-21</td>
																<td class="py-3">승인완료</td>
															</tr>
														</tbody>
													</table>
												</div>
											</div>
											<div class="tab-pane fade p-4" id="pills-html-3"
												role="tabpanel" aria-labelledby="pills-html-tab-3">
												<div class="px-3">
													<ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-3 h5"
														role="tablist">
														<li class="nav-item h5"><a
															class="nav-link px-2 pb-2 active h5" href="#tabs2-tab3"
															role="tab" aria-selected="true" data-toggle="tab">입금
																전표 등록 </a></li>
														<li class="nav-item ml-4 h5"><a
															class="nav-link px-2 pb-2 h5" href="#tabs2-tab4" role="tab"
															aria-selected="false" data-toggle="tab">출금 전표 등록 </a></li>
													</ul>
													<div id="tabsContent2" class="card-body tab-content p-0 h5">
														<div class="tab-pane fade show active h5" id="tabs2-tab3"
															role="tabpanel">
															<table class="table table-bordered bg-white"
																style="text-align: center">
																<tbody>
																	<tr class="text-dark"style="background-color:#B5D3FF">
																		<th scope="col" colspan="4">입금전표</th>
																	</tr>
																	<tr>
																		<th scope="col">과목</th>
																		<td scope="col"><input id="text" type="text"
																			class="form-control" name="password"></td>
																		<th scope="col">항목</th>
																		<td scope="col"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																	</tr>
																	<tr>
																		<th colspan="3" align="center">연결ID</th>
																		<td><input id="text" type="text"
																			class="form-control" name="password" ></td>

																	</tr>
																	<tr>
																		<th colspan="3" align="center">계정ID</th>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<th colspan="3" align="center">적요</th>
																		<th>금액</th>

																	</tr>
																	<tr>
																		<td colspan="3"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<td colspan="3"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<td><input id="text" type="text"
																			class="form-control" name="text"></td>
																	</tr>
																	<tr>
																		<td colspan="3"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<th colspan="3">합계</th>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	
																</tbody>
																
															
														
															</table>
															<div>
															<button type="button" class="btn btn-outline-dark"
													style='float: right;background-color:#B5D3FF;'>등록하기</button>
														</div>
</div>
														<div class="tab-pane fade" id="tabs2-tab4" role="tabpanel">
															<table class="table table-bordered bg-white"
																style="text-align: center">
																<tbody>
																	<tr class="text-dark"style="background-color:#B5D3FF">
																		<th scope="col" colspan="4">출금전표</th>
																	</tr>
																	<tr>
																		<th scope="col">과목</th>
																		<td scope="col"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<th scope="col">항목</th>
																		<td scope="col"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																	</tr>
																	<tr>
																		<th colspan="3" align="center">연결ID</th>
																		<td><input id="text" type="text"
																			class="form-control" name="password" ></td>

																	</tr>
																	<tr>
																		<th colspan="3" align="center">계정ID</th>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<th colspan="3" align="center">적요</th>
																		<th>금액</th>

																	</tr>
																	<tr>
																		<td colspan="3"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<td colspan="3"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<td colspan="3"><input id="text" type="text"
																			class="form-control" name="password" ></td>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																	<tr>
																		<th colspan="3">합계</th>
																		<td><input id="text" type="text"
																			class="form-control" name="text" ></td>
																	</tr>
																</tbody>
															</table>
															<button type="button" class="btn btn-outline-dark"
																style='float: right;background-color:#B5D3FF;'>등록하기</button>
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

	<%@ include file="../common/footer.jsp"%>
	<script src="${project}js/graindashboard.js"></script>
	<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>