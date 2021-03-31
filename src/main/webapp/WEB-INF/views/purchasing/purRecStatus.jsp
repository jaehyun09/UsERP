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
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu side-nav-opened">
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
<!-- b -->		<ul id="asd" class="side-nav-menu side-nav-menu-second-level mb-0" style="display:block;">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/purBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/purInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/purStatus">구매 현황</a>
					</li>
					<li class="side-nav-menu-item active">
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
                        <li class="breadcrumb-item"><a href="#">구매 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">입고 현황</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>입고 현황</b>
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
                                    aria-controls="pills-result-1" aria-selected="true">입고 내역</a></li>
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light"><a
                                    class="nav-link d-flex align-items-center py-2 px-3"
                                    id="pills-html-tab-1" data-toggle="pill"
                                    href="#pills-html-1" role="tab" aria-controls="pills-html-1"
                                    aria-selected="false">입고 전표 등록</a></li>
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
                                                 <input class="form-control form-control-icon-text" placeholder="거래처명 검색" type="text" >
                                            </div>
                                            <br>
                                    <!-- 검색창 끝 --> 
                                    <div class="row">
                                       <div class="col">
                                          <div class="collapse multi-collapse"
                                             id="multiCollapseExample1">
                                                 <table class="table table-bordered bg-white text-dark ass2 th20">
                                                   <tbody>
                                                      <tr class="text-white con center">
                                                         <th colspan="2" style="width:20%;">일단전표번호로</th>
                                                      </tr>
                                                      <tr>
                                                         <th style="width:20%;">NO.</th>
                                                         <td>10</td>
                                                      </tr>
                                                      <tr>
                                                         <th style="width:20%;">사업자등록번호</th>
                                                         <td>1234567890</td>
                                                      </tr>
                                                      <tr>
                                                         <th style="width:20%;">대표자명</th>
                                                         <td>최유성</td>
                                                      </tr>
                                                      <tr>
                                                         <th style="width:20%;">업태</th>
                                                         <td style="width:20%;">업태1</td>

                                                      </tr>
                                                      <tr>
                                                         <th style="width:20%;">회사규모</th>
                                                         <td>n명</td>
                                                      </tr>
                                                      <tr>
                                                         <th style="width:20%;">구분</th>
                                                         <td>구매</td>
                                                      </tr>
                                                      
                                                   </tbody>
                                                </table><br><br><br>
                                          </div>
                                       </div>
                                       <table class="table  bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr class="text-white table-bordered tap">
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">주문번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">일단전표번호로...</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">상품명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">구매수량</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">창고명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">입고일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">담당자명</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">최종수정일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 h4">상태</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td class="py-3 middle" style="vertical-align:middle">10</td>
                                                <td class="py-3 middle" style="vertical-align:middle">
                                                   	<!-- a태그에 class="btn" 일단 제거  style 추가  a태그 앞뒤로 p태그 제거
                                                      <a data-toggle="collapse" style="text-decoration:none; color: #000"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1" >거래처명1</a>-->
                                                     <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">거래처명3</a>    
                                                </td>
                                                <td class="py-3 middle" style="vertical-align:middle">최유성</td>
                                                <td class="py-3 middle" style="vertical-align:middle">업태1</td>
                                                <td class="py-3 middle" style="vertical-align:middle">사용중</td>
                                                <td class="py-3 middle" style="vertical-align:middle">2017-08-21</td>
                                                <td class="py-3 middle" style="vertical-align:middle">김민수</td>
                                                <td class="py-3 middle" style="vertical-align:middle">2017-09-03</td>
                                                <td class="py-3 middle" style="vertical-align:middle">2017-09-03</td>
                                                <td class="py-3 middle" style="vertical-align:middle">입고준비</td>
                                             </tr>
                                             <tr>
                                                <td class="py-3 middle">11</td>
                                                <td class="py-3 middle">
                                                   <!-- <p>
                                                   	<!-- a태그에 class="btn" 일단 제거  style 추가
                                                      <a data-toggle="collapse" style="text-decoration:none; color: #000"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1" >거래처명1</a>
                                                   </p>-->
                                                   <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">거래처명2</a>
                                                </td>
                                                <td class="py-3 middle">최유성</td>
                                                <td class="py-3 middle">업태1</td>
                                                <td class="py-3 middle">사용중</td>
                                                <td class="py-3 middle">2017-08-21</td>
                                                <td class="py-3 middle">김민수</td>
                                                <td class="py-3 middle">2017-09-03</td>
                                                <td class="py-3 middle">2017-09-03</td>
                                                <td class="py-3 middle">입고준비</td>
                                             </tr>
                                             <tr>
                                                <td class="py-3 middle" style="vertical-align:middle">12</td>
                                                <td class="py-3 middle" style="vertical-align:middle">
                                                      <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">거래처명3</a>
                                                </td>
                                                <td class="py-3 middle" style="vertical-align:middle">김은희</td>
                                                <td class="py-3 middle">업태3</td>
                                                <td class="py-3 middle">사용중</td>
                                                <td class="py-3 middle">2018-02-22</td>
                                             </tr>
                                          </tbody>
                                       </table>


                                    </div>
                                 </div>

                                 <div class="tab-pane fade p-4" id="pills-html-1"
                                    role="tabpanel" aria-labelledby="pills-html-tab-1">
                                    <form name="form1" method="post">
                                    <div class="row">
                                       	<table class="table bg-white text-dark center ass2" style="text-align:center">
	                                         <tr class="text-white table-bordered tap">
	                                            <th colspan="3">입고 전표</th>
	                                         </tr>
	                                         <tr>
												<td class="font-weight-semi-bold border-top-0 py-2 text-dark"
													colspan="2" style="vertical-align: middle;">상품명</td>
												<td style="vertical-align: middle;">
	                                               <select class="form-control" id="exampleFormControlSelect1">
	                                                 <option>상품01</option>
	                                                 <option>상품02</option>
	                                                 <option>상품03</option>
	                                               </select>
												</td>
											</tr>
											<tr>
												<td class="py-3 text-dark" colspan="2"style="vertical-align: middle;"><b>구매 거래처</b></td>
												<td style="vertical-align: middle;">
	                                               <select class="form-control" id="exampleFormControlSelect1">
	                                                 <option>거래처01</option>
	                                                 <option>거래처02</option>
	                                                 <option>거래처03</option>
	                                               </select>
												</td>
											</tr>
											<tr>
		                                    	<td class="py-3 text-dark" colspan="2"style="vertical-align: middle;"><b>구매 단가</b></td>
		                                       <td style="vertical-align: middle;">
		                                       		<input class = "form-control" type = "number" name="" min = "1000" step = "100" value = "1000">
		                                       </td>
		                                    </tr>
											<tr>
												<td class="py-3" colspan="2" style="vertical-align: middle;"><b>수량</b></td>
												<td align="center" colspan = "2">
													<input class="form-control"  type="number" name="in_count" min="1" step="1" value="1">
												</td>
											</tr>
											<tr>
												<td class="py-3" colspan="2" style="vertical-align: middle;"><b>담당자</b></td>
												<td align="center" colspan = "2">
													<input class="form-control" name="emp_code" type="text"><!-- value="세션아이디 값으로 들어가는 값" readonly -->
												</td>
											</tr>
										</tbody>
									</table>
                                    </div>
                                    <div align="center">
										<button type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                                     	<button type="reset" class="btn btn-outline-info">재입력</button>
									</div>
									</form>
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