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
    <!-- Sidebar Nav -->
    <aside id="sidebar" class="js-custom-scroll side-nav">
        <ul id="sideNav" class="side-nav-menu side-nav-menu-top-level mb-0">          

            <!-- Users -->
            <li class="side-nav-menu-item side-nav-has-menu active side-nav-opened">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#subUsers">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-themify-favicon"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body asss">인사 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                 <!-- Users: subUsers -->
                <ul id="subUsers" class="side-nav-menu side-nav-menu-second-level mb-0" style="display: block;">
                    <li class="side-nav-menu-item active">
                        <a class="side-nav-menu-link ass2" href="${path}/personnelCode">기초 등록</a>
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
                <!-- End Users: subUsers -->
            </li>
            <!-- End Users -->
          <!-- Authentication -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#subPages">
              <span class="side-nav-menu-icon d-flex mr-3">
                <i class="gd-timer"></i>
              </span>
                    <span class="side-nav-fadeout-on-closed media-body asss">근태 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Pages: subPages -->
                <ul id="subPages" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                         <a class="side-nav-menu-link ass2" href="${path}/abSelect">조회</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/abApplication">신청</a>
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
                    <span class="side-nav-fadeout-on-closed media-body asss">출고 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="subComponents" class="side-nav-menu side-nav-menu-second-level mb-0">
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
                    <span class="side-nav-fadeout-on-closed media-body asss">매입 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- Utils: subUtils -->
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
                    <span class="side-nav-fadeout-on-closed media-body asss">물류 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
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
                </ul>
                <!-- End UI Components: subComponents -->
            </li>
            <!-- End UI Components -->
             <!-- UI Components -->
            <li class="side-nav-menu-item side-nav-has-menu">
                <a class="side-nav-menu-link media align-items-center" href="#"
                   data-target="#gg">
                  <span class="side-nav-menu-icon d-flex mr-3">
                    <i class="gd-infinite"></i>
                  </span>
                    <span class="side-nav-fadeout-on-closed media-body asss">회계 관리</span>
                    <span class="side-nav-control-icon d-flex">
                <i class="gd-angle-right side-nav-fadeout-on-closed"></i>
              </span>
                    <span class="side-nav__indicator side-nav-fadeout-on-closed"></span>
                </a>

                <!-- UI Components: subComponents -->
                <ul id="gg" class="side-nav-menu side-nav-menu-second-level mb-0">
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/accountingreport">회계보고서</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/bankManagement">계좌 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/accountManagement">계정 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/statementManagement">전표 관리</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/bonddebtManagement">채권/채무 조회</a>
                    </li>
                </ul>
                <!-- End UI Components: subComponents -->
            </li>
            <!-- End UI Components -->
        </ul>
    </aside>
    <!-- End Sidebar Nav -->

   <!-- 기초 등록 시작 -->
      <div class="content">
         <div class="py-4 px-3 px-md-4">
            <div class="card">
               <div class="card-body">
                  <nav aria-label="breadcrumb">
                     <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">인사 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">기초 등록</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>
                              기초 등록 </b><a class="anchorjs-link" href="#example"
                                 aria-label="Anchor" data-anchorjs-icon="#"></a></h4>
                                 
                           <div class="mb-3">
                           
                              <!-- Nav Classic -->
                                    <ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark" id="tabs-tab-3" role="tablist">
                                        <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light  ">
                                            <a class="nav-link d-flex align-items-center py-2 px-3 active  " id="tabs-result-tab-3" data-toggle="pill" href="#tabs-result-3" role="tab" aria-controls="tabs-result-3" aria-selected="true">인사코드 관리</a>
                                        </li>
                                        <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
                                            <a class="nav-link d-flex align-items-center py-2 px-3 " id="tabs-html-tab-3" data-toggle="pill" href="#tabs-html-3" role="tab" aria-controls="tabs-html-3" aria-selected="false">부서 관리</a>
                                        </li>
                                    </ul>
                                    <!-- End Nav Classic -->

                                    <!-- Tab Content -->
                                    <div class="tab-content bg-lighter" id="tabs-tabContent-3">
                                        <div class="tab-pane fade show active" id="tabs-result-3" role="tabpanel" aria-labelledby="tabs-result-tab-3">
                                            <div class="px-3 p-4">
                                                <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-2" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab1" role="tab" aria-selected="true"
                                                           data-toggle="tab">인사코드 그룹
                                                        </a>
                                                    </li>
                                                    <li class="nav-item ml-4">
                                                        <a class="nav-link px-2 pb-2 ass2" href="#tabs2-tab2" role="tab" aria-selected="false"
                                                           data-toggle="tab">인사코드 그룹 등록
                                                        </a>
                                                    </li>
                                                    <li class="nav-item ml-4">
                                                        <a class="nav-link px-2 pb-2 ass2" href="#tabs2-tab3" role="tab" aria-selected="true"
                                                           data-toggle="tab">인사코드
                                                        </a>
                                                    </li>
                                                    <li class="nav-item ml-4">
                                                        <a class="nav-link px-2 pb-2 ass2" href="#tabs2-tab4" role="tab" aria-selected="false"
                                                           data-toggle="tab">인사코드 등록
                                                        </a>
                                                    </li>
                                                </ul>
                                                
                                         <div id="tabsContent2" class="card-body tab-content p-3">
                                            <!-- 탭 1 -->
                                           <div class="tab-pane fade show active" id="tabs2-tab1" role="tabpanel">
                                            <div class="row">
                                       
                                          <table class="table table-striped bg-white text-dark center ass2" style="text-align:center">
                                       <thead class="text-white table-bordered tap">
                                          <tr>
                                             <th class="font-weight-semi-bold  py-3 h4">그룹번호</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 h4">그룹명</th>
                                             <th class="font-weight-semi-bold border-top-0 py-3 h4">사용상태</th>
                                          </tr>
                                       </thead>
                                       <tbody>
                                          <tr>
                                             <td class="py-1">1</td>
                                             <td class="py-1">직급</td>
                                             <td class="py-1">사용</td>
                                          </tr>
                                          <tr>
                                             <td class="py-1">2</td>
                                             <td class="py-1">휴가</td>
                                             <td class="py-1">사용</td>
                                          </tr>
                                          <tr>
                                             <td class="py-1">3</td>
                                             <td class="py-1">급여</td>
                                             <td class="py-1">사용</td>
                                          </tr>
                                       </tbody>
                                    </table>
                                       </div>
                                    </div>
                                    <!-- 탭1 -->
                                    
                                    <!-- 탭2 -->
                                    <div class="tab-pane fade" id="tabs2-tab2" role="tabpanel">
                                       <div class="row">
                                 
                              <table class="table bg-white text-dark center ass2" style="text-align:center">
                                 <tr class="text-white table-bordered tap">
                                    <th colspan="3"> 인사코드 그룹 등록 </th>
                                 </tr>
                                 <tr>
                                    <th>그룹명 </th>
                                    <td><input id="text" type="text" class="form-control" name="password" required=""></td>
                                    <td><button type="button" class="btn btn-outline-info">중복확인</button></td>
                                 </tr>
                                 <tr>
                                    <th> 그룹번호 </th>
                                    <td> <input id="text" type="text" class="form-control" name="password" required=""></td>
                                    <td><button type="button" class="btn btn-outline-info">중복확인</button></td>
                                 </tr>
                                 <tr>
                                    <th> 사용상태 </th>
                                    <td>    
                                    <div class="form-group">
                                         <select class="form-control" id="exampleFormControlSelect1">
                                           <option>사용</option>
                                           <option>비사용</option>
                                         </select>
                                       </div>
                                     </td>
                                 </tr>
                              </table>
                           </div>
                           <div align=center>
                              <button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                              <button type="button" type="reset" class="btn btn-outline-info">재입력</button>
                           </div>
                                 </div>
                                  <!-- 탭2 -->
                                  
                                  <!-- 탭3 -->
                                    <div class="tab-pane fade" id="tabs2-tab3" role="tabpanel">
                                       <div class="row">
                                 
                                       <table class="table table-striped bg-white text-dark center ass2"> 
                                 <thead>
                                    <tr class="text-white table-bordered tap">
                                       <th class="font-weight-semi-bold border-top-0 py-2">그룹번호</th>
                                       <th class="font-weight-semi-bold border-top-0 py-2">인사코드</th>
                                       <th class="font-weight-semi-bold border-top-0 py-2">인사코드명</th>
                                       <th class="font-weight-semi-bold border-top-0 py-2">사용상태</th>
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
                                  <!-- 탭3 -->
                                  
                                  <!-- 탭4 -->
                                    <div class="tab-pane fade" id="tabs2-tab4" role="tabpanel">
                                       <div class="row">
                                 
                                       <table class="table bg-white text-dark center ass2" style="text-align:center">
                                       <tr class="text-white table-bordered tap">
                                             <th colspan="3"> 인사코드  등록 </th>
                                       </tr>
                                       <tr>
                                          <th>그룹번호 </th>
                                          <td>    
                                          <div class="form-group">
                                               <select class="form-control" id="exampleFormControlSelect1">
                                                 <option>1</option>
                                                 <option>2</option>
                                                 <option>3</option>
                                                 <option>4</option>
                                               </select>
                                             </div>
                                           </td>
                                       </tr>
                                       <tr>
                                          <th> 인사코드 </th>
                                          <td> <input id="text" type="text" class="form-control" name="password" required=""></td>
                                          <td><button type="button" class="btn btn-outline-info">중복확인</button></td>
                                       </tr>
                                       <tr>
                                          <th> 인사코드명 </th>
                                          <td> <input id="text" type="text" class="form-control" name="password" required=""></td>
                                          <td><button type="button" class="btn btn-outline-info">중복확인</button></td>
                                       </tr>
                                       <tr>
                                          <th> 사용상태 </th>
                                          <td>    
                                          <div class="form-group">
                                               <select class="form-control" id="exampleFormControlSelect1">
                                                 <option>사용</option>
                                                 <option>비사용</option>
                                               </select>
                                             </div>
                                           </td>
                                       </tr>
                                    </table>
                                    </div>
                                    <div class="center">
                                                   <button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
                                                   <button type="button" type="reset" class="btn btn-outline-info">재입력</button>
                                             </div>
                                  </div>
                                  <!-- 탭4 -->
                                  
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="tab-pane fade" id="tabs-html-3" role="tabpanel" aria-labelledby="tabs-html-tab-3">
                                            <div class="px-3 p-4">
                                                <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-2" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link px-2 pb-2 active ass2" href="#tabs3-tab3" role="tab" aria-selected="true"
                                                           data-toggle="tab">부서
                                                        </a>
                                                    </li>
                                                    <li class="nav-item ml-4">
                                                        <a class="nav-link px-2 pb-2 ass2" href="#tabs3-tab4" role="tab" aria-selected="false"
                                                           data-toggle="tab">부서 등록
                                                        </a>
                                                    </li>
                                                </ul>
                                                
                                         <div id="tabsContent2" class="card-body tab-content p-3">
                                           <!-- 탭 1 -->
                                           <div class="tab-pane fade show active" id="tabs3-tab3" role="tabpanel">
                                            <div class="row">
                                       
                                       <table class="table table-striped bg-white text-dark center ass2" style="text-align:center">
													<thead>
														<tr class="text-white table-bordered tap">
															<th class="font-weight-semi-bold border-top-0 py-2">부서번호</th>
															<th class="font-weight-semi-bold border-top-0 py-2">부서명</th>
															<th class="font-weight-semi-bold border-top-0 py-2">접근권한</th>
															<th class="font-weight-semi-bold border-top-0 py-2">사용상태</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td class="py-3">01</td>
															<td class="py-3">영업부</td>
															<td class="py-3">관리자</td>
															<td class="py-3">사용</td>
														</tr>
														<tr>
															<td class="py-3">02</td>
															<td class="py-3">인사부</td>
															<td class="py-3">관리자</td>
															<td class="py-3">사용</td>
														</tr>
														<tr>
															<td class="py-3">03</td>
															<td class="py-3">회계부</td>
															<td class="py-3">관리자</td>
															<td class="py-3">사용</td>
														</tr>
													</tbody>
												</table>
                                       </div>
                                    </div>
                                    <!-- 탭1 -->
                                      
                                      
                                      <!-- 탭 1 -->
                                           <div class="tab-pane fade" id="tabs3-tab4" role="tabpanel">
                                            <div class="row">
                                       
													<table class="table bg-white text-dark center ass2" style="text-align:center">
														<tr class="text-white table-bordered tap">
															<th colspan="3"> 부서 등록 </th>
														</tr>
														<tr>
															<th>부서번호 </th>
															<td><input id="text" type="text" class="form-control" name="password" required=""></td>
															<td><button type="button" class="btn btn-outline-info">중복확인</button></td>
														</tr>
														<tr>
															<th> 부서명 </th>
															<td> <input id="text" type="text" class="form-control" name="password" required=""></td>
															<td><button type="button" class="btn btn-outline-info">중복확인</button></td>
														</tr>
														<tr>
															<th> 접근권한 </th>
															<td>	 
															<div class="form-group">
															     <select class="form-control" id="exampleFormControlSelect1">
															       <option>사원</option>
															       <option>관리자</option>
															     </select>
															   </div>
															 </td>
														</tr>
														<tr>
															<th> 사용상태 </th>
															<td>	 
															<div class="form-group">
															     <select class="form-control" id="exampleFormControlSelect1">
															       <option>사용</option>
															       <option>비사용</option>
															     </select>
															   </div>
															 </td>
														</tr>
													</table>
												</div>
												
										<div align=center>
											<button type="button" type="submit" class="btn btn-outline-info">등록</button>&nbsp;&nbsp;&nbsp;
											<button type="button" type="reset" class="btn btn-outline-info">재작성</button>
										</div>
										
										<br>
										
                                       </div>
                                    </div>
                                    <!-- 탭1 -->
                                </div>
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

   </main>

   <%@ include file="../common/footer.jsp"%>
   <script src="${project}js/graindashboard.js"></script>
   <script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>