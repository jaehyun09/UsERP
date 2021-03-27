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
						<a class="side-nav-menu-link ass2" href="${path}/personnelBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/personnelAppointment">인사 발령</a>
                    </li>
                    <li class="side-nav-menu-item active">
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

   <!-- 인사카드 관리 시작 -->
 		<div class="content">
			<div class="py-4 px-3 px-md-4">
				<div class="card">
					<div class="card-body">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">인사 관리</a></li>
								<li class="breadcrumb-item active" aria-current="page">인사 카드</li>
							</ol>
						</nav>
						<div class="row">

							<div class="col-xl-12">

								<div id="example" class="mb-9">
									<h4 class="h1 text-dark"><b>
										인사 카드 </b><a class="anchorjs-link" href="#example"
											aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h4>
									<div class="mb-3">
                              
                              <!-- Nav Classic -->
								<ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark" id="tabs-tab-3" role="tablist">
									<li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
									<a class="nav-link d-flex align-items-center py-2 px-3 active"
											id="pills-result-tab-1" data-toggle="pill"
											href="#pills-result-1" role="tab"
											aria-controls="pills-result-1" aria-selected="true">인사 카드 조회</a>
									</li>
									<li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
									<a class="nav-link d-flex align-items-center py-2 px-3"
											id="pills-html-tab-1" data-toggle="pill"
											href="#pills-html-1" role="tab" aria-controls="pills-html-1"
											aria-selected="false">인사 카드 등록</a>
									</li>
										<li class="nav-item border-bottom border-xl-bottom-0  asss bg-light  ">
									<a class="nav-link d-flex align-items-center py-2 px-3"
											id="pills-html-tab-2" data-toggle="pill"
											href="#pills-html-2" role="tab" aria-controls="pills-html-2"
											aria-selected="false">휴직자 조회</a>
									</li>
									<li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
									<a class="nav-link d-flex align-items-center py-2 px-3"
											id="pills-html-tab-3" data-toggle="pill"
											href="#pills-html-3" role="tab" aria-controls="pills-html-3"
											aria-selected="false">퇴직자 조회</a>
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
                                  <input class="form-control form-control-icon-text" placeholder="사원명/사번 검색" type="text">
                                </div>
                                <br>
                                <!-- 검색창 끝 -->   
                                 <div class="row">
                                       <div class="col">
                                          <div class="collapse multi-collapse"
                                             id="multiCollapseExample1">
                                                <table class="table table-bordered bg-white text-dark ass2 center ">
                                                   <tbody>
                                                      <tr class="text-white con center">
                                                         <th colspan="2">유재석</th>
                                                      </tr>
                                                      <tr>
                                                         <th>NO.</th>
                                                         <td>10</td>
                                                      </tr>
                                                      <tr>
                                                         <th>사업자등록번호</th>
                                                         <td>1234567890</td>
                                                      </tr>
                                                      <tr>
                                                         <th>대표자명</th>
                                                         <td>최유성</td>
                                                      </tr>
                                                      <tr>
                                                         <th>업태</th>
                                                         <td>업태1</td>

                                                      </tr>
                                                      <tr>
                                                         <th>회사규모</th>
                                                         <td>n명</td>
                                                      </tr>
                                                      <tr>
                                                         <th>사용상태</th>
                                                         <td>사용중</td>
                                                      </tr>
                                                      <tr>
                                                         <th rowspan="4" style="vertical-align:middle">주요 거래 품목</th>
                                                      </tr>
                                                      <tr>
                                                         <td>거래처명1 - 주요 거래 품목1</td>
                                                      </tr>
                                                      <tr>
                                                         <td>거래처명1 - 주요 거래 품목2</td>
                                                      </tr>
                                                      <tr>
                                                         <td>거래처명1 - 주요 거래 품목3</td>
                                                      </tr>
                                                   </tbody>
                                                </table><br><br><br>
                                          </div>
                                       </div>
                                    <table class="table table-striped bg-white text-dark center ass2">
                                       <thead class="text-white table-bordered tap">
                                          <tr>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사번</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">부서명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">직급</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사원명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">입사일</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <td class="py-3 middle">001</td>
                                             <td class="py-3 middle">영업부</td>
                                             <td class="py-3 middle">대리</td>
                                             <td class="py-3 middle">
                                                   <p>
                                                      <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">유재석</a>
                                                   </p>
                                                </td>
                                             <td class="py-3 middle">2005-11-23</td>
                                          </tr>
                                       </tbody>
                                    </table>
                                    <br>
                                 </div>
								</div>
								
                         <div class="tab-pane fade p-4" id="pills-html-1"
                            role="tabpanel" aria-labelledby="pills-html-tab-1">
                         <!-- 인사카드 폼 시작 -->     
                          <form>
							<table class="table bg-white text-dark center ass2" style="text-align:center">
								<tr>
									<th class="text-white table-bordered tap py-3 con2"colspan="3"> 인사카드 </th>
								</tr>
								<tr>
									<th style="vertical-align:middle">* 사번</th>
									<td><input id="text" type="text" class="form-control" name="password" required=""></td>
									<td><button type="button" class="btn btn-outline-info">중복확인</button></td>
								</tr>
								<tr>
									<th style="vertical-align:middle">* 사원명</th>
									<td> <input id="text" type="text" class="form-control" name="password" required=""></td>
								</tr>
								<tr>
									<th style="vertical-align:middle"> * 부서명 </th>
									<td>	 
									<div class="form-group">
									     <select class="form-control" id="exampleFormControlSelect1">
									       <option>영업부</option>
									       <option>인사부</option>
									     </select>
									   </div>
									 </td>
								</tr>
								<tr>
									<th style="vertical-align:middle"> * 직급</th>
									<td>	 
									<div class="form-group">
									     <select class="form-control" id="exampleFormControlSelect1">
									         <option>인턴사원</option>
                                              		 <option>팀장</option>
									     </select>
									   </div>
									 </td>
								</tr>
								<tr>
									<th style="vertical-align:middle"> * 주민등록번호 </th>
									<td><input id="text" type="text" class="form-control" name="password" required=""></td>
								</tr>
								<tr>
									<th style="vertical-align:middle">* 입사일</th>
									<td><input type="date" class="form-control"></td>
								</tr>
								<tr>
                                      <th style="vertical-align:middle">전화번호</th>
                                      <td><input type="text" class="form-control"></td>
                                   </tr>
                                   <tr>
                                      <th style="vertical-align:middle">* 휴대전화</th>
                                      <td><input type="tel" class="form-control"></td>
                                   </tr>
                                   <tr>
                                      <th style="vertical-align:middle">여권번호</th>
                                      <td><input type="text" class="form-control"></td>
                                   </tr>
                                   <tr>                                    
                                      <th style="vertical-align:middle">* 이메일</th>
                                      <td><input class="form-control" type="text" maxlength="20"
                                                  style="width:60px">
                                               @
                                               <input class="form-control" type="text" maxlength="20"
                                                  style="width:70px">
                                               <select class="form-control" name="email3" onchange="selectEmailChk();">
                                                  <option value="0">직접입력</option>
                                                  <option value="naver.com">네이버</option>
                                                  <option value="gmail.com">구글</option>
                                                  <option value="nate.com">네이트</option>
                                                  <option value="daum.com">다음</option>
                                               </select>   </td>
                                   </tr>
                                   <tr>                                    
                                      <th style="vertical-align:middle">* 주소</th>
                                      <td><input type="text" class="form-control"></td>
                                   </tr>
                                   <tr>                                    
                                      <th style="vertical-align:middle">근속년수</th>
                                      <td><input type="text" class="form-control"></td>
                                   </tr>
                                   <tr>
                                      <th style="vertical-align:middle">* 급여계좌</th>
                                      <td><input type="text" class="form-control"></td>
                                   </tr>
                                   <tr>
                                      <th style="vertical-align:middle">* 은행</th>
                                      <td><div class="form-group">
                                              <select class="form-control" id="exampleFormControlSelect1">
                                                <option>농협</option>
                                                <option>신한</option>
                                              </select>
                                            </div>
                                      </td>
                                   </tr>
							</table>
						
							<div align=center>
                               	<button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                               	<button type="button" type="reset" class="btn btn-outline-info">재입력</button>
                            </div>
						
						</form>
					 <!-- 인사카드 폼 끝 -->   
					   
                                 </div>
                                 <div class="tab-pane fade p-4" id="pills-html-2"
                                    role="tabpanel" aria-labelledby="pills-html-tab-2">
                                    
                                <!-- 검색창 시작 -->      
                                   <div class="input-group">
                                  <div class="input-group-append">
                                    <i class="gd-search icon-text icon-text-sm"></i>
                                  </div>
                                  <input class="form-control form-control-icon-text" placeholder="사원명/사번 검색" type="text">
                                </div>
                                <!-- 검색창 끝 -->   
                                   
                                 <br>
                              
                                    <table class="table table-striped bg-white text-dark center ass2">
                                       <thead>
                                          <tr class="text-white table-bordered tap">
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사번</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">부서명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">직급</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사원명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">휴직일</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <td class="py-3">001</td>
                                             <td class="py-3">영업부</td>
                                             <td class="py-3">대리</td>
                                             <td class="py-3">유재석</td>
                                             <td class="py-3">2005-11-23</td>
                                          </tr>
                                          <tr>
                                             <td class="py-3">002</td>
                                             <td class="py-3">회계부</td>
                                             <td class="py-3">팀장</td>
                                             <td class="py-3">강호동</td>
                                             <td class="py-3">2013-04-15</td>
                                          </tr>
                                          <tr>
                                             <td class="py-3">003</td>
                                             <td class="py-3">경리부</td>
                                             <td class="py-3">사원</td>
                                             <td class="py-3">이상순</td>
                                             <td class="py-3">2018-09-24</td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                                 <div class="tab-pane fade p-4" id="pills-html-3"
                                    role="tabpanel" aria-labelledby="pills-html-tab-3">
                                 <!-- 검색창 시작 -->      
                                   <div class="input-group">
                                  <div class="input-group-append">
                                    <i class="gd-search icon-text icon-text-sm"></i>
                                  </div>
                                  <input class="form-control form-control-icon-text" placeholder="사원명/사번 검색" type="text">
                                </div>
                                <!-- 검색창 끝 -->   
                                   
                                 <br>
                              	<form>
                                    <table class="table table-striped bg-white text-dark center ass2">
                                       <thead>
                                          <tr class="text-white table-bordered tap">
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사번</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">부서명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">직급</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">사원명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 con2">퇴직일</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <td class="py-3">001</td>
                                             <td class="py-3">영업부</td>
                                             <td class="py-3">대리</td>
                                             <td class="py-3">유재석</td>
                                             <td class="py-3">2005-11-23</td>
                                          </tr>
                                          <tr>
                                             <td class="py-3">002</td>
                                             <td class="py-3">회계부</td>
                                             <td class="py-3">팀장</td>
                                             <td class="py-3">강호동</td>
                                             <td class="py-3">2013-04-15</td>
                                          </tr>
                                          <tr>
                                             <td class="py-3">003</td>
                                             <td class="py-3">경리부</td>
                                             <td class="py-3">사원</td>
                                             <td class="py-3">이상순</td>
                                             <td class="py-3">2018-09-24</td>
                                          </tr>
                                       </tbody>
                                    </table>
                                    </form>
                                    </div>
                                    <br>
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
   <!-- 인사코드 관리 끝-->

</main>

<%@ include file = "../common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>