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
         <!-- Users -->
            <li class="side-nav-menu-item side-nav-has-menu active side-nav-opened">
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

                <!-- Users: subUsers -->
                <ul id="subPages" class="side-nav-menu side-nav-menu-second-level mb-0" style="display: block;">
                    <li class="side-nav-menu-item active">
                        <a class="side-nav-menu-link" href="${path}/abSelect">조회</a>
                    </li>
                    <li class="side-nav-menu-item ">
                        <a class="side-nav-menu-link" href="${path}/abApplication">신청</a>
                    </li>
                   
                </ul>
                <!-- End Users: subUsers -->
            </li>
            <!-- End Users -->
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
            <!-- End Utils -->
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
    
    
  <!-- 근태 조회 시작 -->
    <div class="content">
			<div class="py-4 px-3 px-md-4">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col-xl-12">
								<div id="example" class="mb-9">
									<h2 class="h4">근태 조회 <a class="anchorjs-link" href="#example"aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h2>
									
									<br>
									
									<div class="mb-3">
										<!-- Nav Classic -->
										<ul class="nav nav-v2 nav-primary d-block d-xl-flex"
											id="pills-tab-1" role="tablist">
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3 active"
												id="pills-result-tab-1" data-toggle="pill"
												href="#pills-result-1" role="tab"
												aria-controls="pills-result-1" aria-selected="true">
													출퇴근 </a></li>
											<li class="nav-item border-bottom border-xl-bottom-0"><a
												class="nav-link d-flex align-items-center py-2 px-3"
												id="pills-html-tab-1" data-toggle="pill"
												href="#pills-html-1" role="tab" aria-controls="pills-html-1"
												aria-selected="false">근퇴 조회 </a></li>

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
										    <input class="form-control form-control-icon-text" placeholder="사원명/사번 검색" type="text" >
										  </div>
										  <!-- 검색창 끝 -->		
										  <br>
										  
											<table class="table table-striped" style="text-align:center">
											    <thead>
											      <tr>
											        <th class="font-weight-semi-bold border-top-0 py-2">사번</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">사원명</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">부서명</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">직급</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">출근시간</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">퇴근시간</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">야간근무</th>
											        <th class="font-weight-semi-bold border-top-0 py-2"></th>
											        <th class="font-weight-semi-bold border-top-0 py-2">처리 상태</th>
											        
											      </tr>
											    </thead>
											    <tbody>
											      <tr>
											      	<td class="py-3">001</td>
											      	<td class="py-3">장그래</td>
											      	<td class="py-3">영업부</td>
													<td class="py-3">대리</td>
													<td class="py-3">연차</td>
											        <td class="py-3">2021-03-21</td>
											        <td class="py-3">2021-03-22</td>
											        <td class="py-3">2021-03-25</td>
													<td class="py-3">완료</td>
											      </tr>
											      <tr>
											        <td class="py-3">012</td>
											      	<td class="py-3">김은희</td>
											      	<td class="py-3">회계부</td>
													<td class="py-3">팀장</td>
													<td class="py-3">병가</td>
											        <td class="py-3">2021-03-19</td>
											        <td class="py-3">2021-03-24</td>
											        <td class="py-3">2021-03-26</td>
													<td class="py-3">완료</td>
											      </tr>
											      
											    </tbody>
											  </table>
											 
											</div>

											<div class="tab-pane fade p-4" id="pills-html-1"
												role="tabpanel" aria-labelledby="pills-html-tab-1">
												<form>
													<!-- 검색창 시작 -->		
									   	  <div class="input-group">
										    <div class="input-group-append">
										      <i class="gd-search icon-text icon-text-sm"></i>
										    </div>
										    <input class="form-control form-control-icon-text" placeholder="사원명/사번 검색" type="text" >
										  </div>
										  <!-- 검색창 끝 -->		
										  <br>
										  
											<table class="table table-striped" style="text-align:center">
											    <thead>
											      <tr>
											        <th class="font-weight-semi-bold border-top-0 py-2">사번</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">사원명</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">부서명</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">직급</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">근태 유형</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">신청일</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">시작일</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">종료일</th>
											        <th class="font-weight-semi-bold border-top-0 py-2">처리 상태</th>
											        
											      </tr>
											    </thead>
											    <tbody>
											      <tr>
											      	<td class="py-3">001</td>
											      	<td class="py-3">장그래</td>
											      	<td class="py-3">영업부</td>
													<td class="py-3">대리</td>
													<td class="py-3">연차</td>
											        <td class="py-3">2021-03-21</td>
											        <td class="py-3">2021-03-22</td>
											        <td class="py-3">2021-03-25</td>
													<td class="py-3">완료</td>
											      </tr>
											      <tr>
											        <td class="py-3">012</td>
											      	<td class="py-3">김은희</td>
											      	<td class="py-3">회계부</td>
													<td class="py-3">팀장</td>
													<td class="py-3">병가</td>
											        <td class="py-3">2021-03-19</td>
											        <td class="py-3">2021-03-24</td>
											        <td class="py-3">2021-03-26</td>
													<td class="py-3">완료</td>
											      </tr>
											      
											    </tbody>
											  </table>
											 
												<br>
											</form>
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
	<!-- 부서 관리 끝-->
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>