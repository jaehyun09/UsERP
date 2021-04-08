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
    
	<!-- Script -->
    <script src="${spath}hr.js"></script>
</head>

<body class="has-sidebar has-fixed-sidebar-and-header">

<%@ include file = "../common/header.jsp" %> 
<main class="main">
	<!-- Start Sidebar Nav -->
	<aside id="sidebar" class="js-custom-scroll side-nav">
		<ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">
			<!-- 대메뉴 : 인사 관리 -->
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu side-nav-opened">
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
<!-- b -->		<ul id="gg" class="side-nav-menu side-nav-menu-second-level mb-0" style="display:block;">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/hrBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/hrAppointment">인사 발령</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/hrCard">인사 카드</a>
					</li>
					<li class="side-nav-menu-item active">
						<a class="side-nav-menu-link ass2" href="${path}/hrSalary">급여</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/waSelect">조회</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/waApplication">신청</a>
					</li>
					<li class="side-nav-menu-item">
                  		<a class="side-nav-menu-link ass2" href="${path}/waConfirm">승인</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/stBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stStatus">판매 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/stRelStatus">출고 현황</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/pdBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdInvenStatus">재고 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdStatus">구매 현황</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/pdRecStatus">입고 현황</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/ldBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/ldStatementManagement">전표 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/ldInventoryControl">재고 관리</a>
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
						<a class="side-nav-menu-link ass2" href="${path}/adBasicReg">기초 등록</a>
					</li>
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/adReport">회계보고서</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/adStatementManagement">전표 관리</a>
					</li>
				</ul>
			</li>
			<!-- 회계 관리 종료 -->
			
		</ul>
	</aside>
	<!-- End Sidebar Nav -->

     <!-- 급여 관리 시작 -->
        <div class="content">
         <div class="py-4 px-3 px-md-4">
            <div class="card">
               <div class="card-body">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">인사 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">급여</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>
                              급여 </b><a class="anchorjs-link" href="#example"
                                 aria-label="Anchor" data-anchorjs-icon="#"></a>
                           </h4>
                           <div class="mb-3">
                           
                              <!-- Nav Classic -->
                              <ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark" id="tabs-tab-3" role="tablist">
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
                                 <a class="nav-link d-flex align-items-center py-2 px-3 active"
                                    id="pills-result-tab-1" data-toggle="pill"
                                    href="#pills-result-1" role="tab"
                                    aria-controls="pills-result-1" aria-selected="true">급여 내역</a>
                                 </li>
                                 <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
                                 <a class="nav-link d-flex align-items-center py-2 px-3"
                                    id="pills-html-tab-1" data-toggle="pill"
                                    href="#pills-html-1" role="tab" aria-controls="pills-html-1"
                                    aria-selected="false">급여 전표 등록</a>
                                 </li>
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
                                  <input class="form-control form-control-icon-text" placeholder="사원명/사번 검색" type="text" style="font-size:20px">
                                </div>
                                <br>
                                <!-- 검색창 끝 -->   
                                 <div class="row" id="salaryDetail">
                                       <div class="col">
                                         <c:forEach var="vo" items="${list9}" varStatus="status">
                                          <div class="collapse" id="multiCollapseExample${status.index}" 
                                          		aria-labelledby="accordion${status.index}"
                                          		data-parent="#salaryDetail">
                                              <table class="table table-bordered bg-white text-dark ass2 center">
											      <tbody>
											         <tr class="text-white con">
											                <th colspan="4">${vo.employee.emp_name}</th>
											            </tr>
											         <tr>
											            <th colspan="1" style="width: 20%">기본급</th>
											            <td colspan="3">${vo.salary.sal_basic}</td>
											         </tr>
											         <tr>
											            <th colspan="1">야근수당</th>
											            <td colspan="3">${vo.salary.sal_night}</td>
											         </tr>
											         <tr>
											            <th colspan="1">특근수당</th>
											            <td colspan="3">${vo.salary.sal_over}</td>
											         </tr>
											         <tr>
											            <th colspan="1">근속수당</th>
											            <td colspan="3">${vo.salary.sal_cos}</td>
											         </tr>
											         <tr>
											            <th colspan="1">직책수당</th>
											            <td colspan="3">${vo.salary.sal_or}</td>
											         </tr>
											      </tbody>
											   </table><br><br><br>
                                          </div>
                                         </c:forEach>
                                       </div>
                                             
                                    <table class="table table-striped bg-white text-dark center ass2">
                                       <thead>
                                          <tr class="text-white table-bordered tap">
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">부서명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">직급</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사원명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">총 급여</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">발행일</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">지급일</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">처리상태</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                         <c:forEach var="vo" items="${list9}" varStatus="status">
                                          <tr>
                                             <td class="py-3" style="vertical-align:middle">${vo.department.dep_name}</td>
                                             <td class="py-3" style="vertical-align:middle">${vo.hrCode.hr_code_name}</td>
                                             <td class="py-3" style="vertical-align:middle">
                                               <a class="text-dark con2" style="font-size:20px" id="accordion${status.index}"
                                                  data-toggle="collapse"
                                                  href="#multiCollapseExample${status.index}" role="button"
                                                  aria-expanded="true"
                                                  aria-controls="multiCollapseExample${status.index}">${vo.employee.emp_name}</a>
                                             </td>
                                             <td class="py-3" style="vertical-align:middle">${vo.ss_total_sal}</td>
                                             <td class="py-3" style="vertical-align:middle"><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.ss_reg_date}"/></td>
                                             <td class="py-3" style="vertical-align:middle"><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.ss_sal_date}"/></td>
                                             <td class="py-3" style="vertical-align:middle">
												<c:if test="${vo.ss_state == 0}">승인 대기 중</c:if>
												<c:if test="${vo.ss_state == 1}">지급 완료</c:if>
												<c:if test="${vo.ss_state == 2}">승인 거부</c:if>
											 </td>
                                          </tr>
                                         </c:forEach>
                                       </tbody>
                                    </table>
                                 </div>
                           </div>
                                 <div class="tab-pane fade p-4" id="pills-html-1"
                                    role="tabpanel" aria-labelledby="pills-html-tab-1">
                                    <form action="hrSalaryInsert" method="post" onsubmit="">
                                       <table class="table bg-white text-dark center ass2">
														<tr class="text-white table-bordered tap">
															<th class="font-weight-semi-bold border-top-0 py-3 con2" colspan="3">급여 전표 등록</th>
														</tr>
														<tr>
															<th style="vertical-align: middle">사원번호</th>
															<td><input id="text" type="text" class="form-control" name="emp_code" style="font-size:20px" required></td>
															<td>
																<button type="button" class="btn btn-outline-info" onclick="hrSalaryCheck()">
																	사번확인
																</button>
															</td>
														</tr>
														<tr>
															<th style="vertical-align: middle">사원명</th>
															<td><input id="text" type="text" class="form-control" name="emp_name" style="font-size:20px" readonly></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">부서</th>
															<td><input id="text" type="text" class="form-control" name="" style="font-size:20px" readonly></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">직급</th>
															<td><input id="text" type="text" class="form-control" name="" style="font-size:20px" readonly></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">대상기간</th>
															<td><input type="month" class="form-control" name="" style="font-size:20px"></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">월급</th>
															<td><input id="text" type="text" class="form-control" name="" style="font-size:20px" readonly></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">식대</th>
															<td><input id="text" type="number" class="form-control" name="" min="0" style="font-size:20px"></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">차량유지비</th>
															<td><input id="text" type="number" class="form-control" name="" min="0" style="font-size:20px"></td>
														</tr>
														<tr>
															<th style="vertical-align: middle">총 급여</th>
															<td><input id="text" type="text" class="form-control" name="" style="font-size:20px" readonly></td>
														</tr>
													</table>
												
												<div align=center>
													<button type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
													<button type="reset" class="btn btn-outline-info">재작성</button>
											</div><br>
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
      </div>
   <!-- 급여 끝-->
</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>