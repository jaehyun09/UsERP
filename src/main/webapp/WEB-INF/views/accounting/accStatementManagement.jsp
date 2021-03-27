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
<!-- o -->	<li class="side-nav-menu-item side-nav-has-menu side-nav-opened">
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
<!-- b -->		<ul id="subUsers" class="side-nav-menu side-nav-menu-second-level mb-0" style="display:block;">
<!-- a -->			<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accReport">회계보고서</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accBankManagement">계좌 관리</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/accManagement">계정 관리</a>
					</li>
					<li class="side-nav-menu-item active">
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
                        <li class="breadcrumb-item"><a href="#">회계 관리</a></li>
                        <li class="breadcrumb-item active" aria-current="page">전표
                           관리</li>
                     </ol>
                  </nav>
                  <div class="row">

                     <div class="col-xl-12">

                        <div id="example" class="mb-9">
                           <h4 class="h1 text-dark"><b>전표 관리 </b><a class="anchorjs-link" href="#example"
                                 aria-label="Anchor" data-anchorjs-icon="#"></a>
                           </h4>
                                <div class="mb-3">
                                    <!-- Nav Classic -->
                                    <ul class="nav nav-tabs nav-primary d-block d-xl-flex text-dark" id="tabs-tab-3" role="tablist">
                                        <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light  ">
                                            <a class="nav-link d-flex align-items-center py-2 px-3 active  " id="tabs-result-tab-3" data-toggle="pill" href="#tabs-result-3" role="tab" aria-controls="tabs-result-3" aria-selected="true">회계 전표</a>
                                        </li>
                                        <li class="nav-item border-bottom border-xl-bottom-0  asss bg-light">
                                            <a class="nav-link d-flex align-items-center py-2 px-3 " id="tabs-html-tab-3" data-toggle="pill" href="#tabs-html-3" role="tab" aria-controls="tabs-html-3" aria-selected="false">급여 전표</a>
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
                                                           data-toggle="tab">승인 전표
                                                        </a>
                                                    </li>
                                                    <li class="nav-item ml-4 ">
                                                        <a class="nav-link px-2 pb-2 ass2" href="#tabs2-tab2" role="tab" aria-selected="false"
                                                           data-toggle="tab">미승인 전표
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div id="tabsContent2" class="card-body tab-content p-3">
                                                    <div class="tab-pane fade show active" id="tabs2-tab1" role="tabpanel">
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
                                            <table class="table bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표종류</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">연결
                                                   ID</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">승인상태</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td class="py-1 ">
                                                   <p>
                                                      <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample1" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">1234</a>
                                                   </p>
                                                </td>
                                                <td class="py-1 "style="vertical-align: middle">입금전표</td>
                                                <td class="py-1 "style="vertical-align: middle">Otto</td>
                                                <td class="py-1 "style="vertical-align: middle" >21-03-21</td>
                                                <td class="py-1 "style="vertical-align: middle">대기중</td>
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
                                                <td class="py-1 "style="vertical-align: middle">출금전표</td>
                                                <td class="py-1 "style="vertical-align: middle">Thornton</td>
                                                <td class="py-1 "style="vertical-align: middle">21-03-21</td>
                                                <td class="py-1 "style="vertical-align: middle">대기중</td>
                                             </tr>
                                             <tr>
                                                <td class="py-1">
                                                   <p>
                                                      <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample13" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">0987</a>
                                                   </p>
                                                </td>
                                                <td class="py-1 "style="vertical-align: middle">입금전표</td>
                                                <td class="py-1 "style="vertical-align: middle">Otto</td>
                                                <td class="py-1 "style="vertical-align: middle">21-03-21</td>
                                                <td class="py-1 "style="vertical-align: middle">승인완료</td>
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
                                                <td class="py-1 "style="vertical-align: middle">출금전표</td>
                                                <td class="py-1 "style="vertical-align: middle">Thornton</td>
                                                <td class="py-1 "style="vertical-align: middle">21-03-21</td>
                                                <td class="py-1 "style="vertical-align: middle">승인완료</td>
                                             </tr>
                                          </tbody>
                                       </table>
                                                    </div>
                                    </div>
                                    <div class="tab-pane fade" id="tabs2-tab2" role="tabpanel">
                                       <div class="row">
                                       <div class="col">
                                          <div class="collapse multi-collapse"
                                             id="multiCollapseExample2">
                                             <div class="bg-white p-2">
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
                                                </table>
                                                </div>
                                                     <div align=center>
                                                   <button type="button" type="submit" class="btn btn-outline-info">승인</button>&nbsp;&nbsp;&nbsp;
                                                   <button type="button" type="reset" class="btn btn-outline-info">승인거부</button>                                  
                                       </div>
                                             <br><br><br>
                                          </div>
                                       </div>
                                       <table class="table bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표종류</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">연결
                                                   ID</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">승인상태</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td class="py-1">
                                                   <p>
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
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="tabs-html-3" role="tabpanel" aria-labelledby="tabs-html-tab-3">
                                          <div class="tab-pane fade show active" id="tabs-result-3" role="tabpanel" aria-labelledby="tabs-result-tab-3">
                                            <div class="px-3 p-4">
                                                <ul id="tabs2" class="nav nav-tabs nav-v2 nav-primary mb-2" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link px-2 pb-2 active ass2" href="#tabs2-tab3" role="tab" aria-selected="true"
                                                           data-toggle="tab">승인 전표
                                                        </a>
                                                    </li>
                                                    <li class="nav-item ml-4">
                                                        <a class="nav-link px-2 pb-2 ass2" href="#tabs2-tab4" role="tab" aria-selected="false"
                                                           data-toggle="tab">미승인 전표
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div id="tabsContent2" class="card-body tab-content p-3">
                                                    <div class="tab-pane fade show active" id="tabs2-tab3" role="tabpanel">
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
                                            <table class="table bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표종류</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">연결
                                                   ID</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">승인상태</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr>
                                                <td class="py-1">
                                                   <p>
                                                      <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample1" role="button"
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
                                                         href="#multiCollapseExample12" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">1235</a>
                                                   </p>
                                                </td>
                                                <td class="py-1" style="vertical-align: middle">출금전표</td>
                                                <td class="py-1" style="vertical-align: middle">Thornton</td>
                                                <td class="py-1" style="vertical-align: middle">21-03-21</td>
                                                <td class="py-1" style="vertical-align: middle">대기중</td>
                                             </tr>
                                             <tr>
                                                <td class="py-1">
                                                   <p>
                                                      <a class="btn" data-toggle="collapse"
                                                         href="#multiCollapseExample13" role="button"
                                                         aria-expanded="false"
                                                         aria-controls="multiCollapseExample1">0987</a>
                                                   </p>
                                                </td>
                                                <td class="py-1" style="vertical-align: middle">입금전표</td>
                                                <td class="py-1" style="vertical-align: middle">Otto</td>
                                                <td class="py-1" style="vertical-align: middle">21-03-21</td>
                                                <td class="py-1" style="vertical-align: middle">승인완료</td>
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
                                                <td class="py-1" style="vertical-align: middle">출금전표</td>
                                                <td class="py-1" style="vertical-align: middle">Thornton</td>
                                                <td class="py-1" style="vertical-align: middle">21-03-21</td>
                                                <td class="py-1" style="vertical-align: middle">승인완료</td>
                                             </tr>
                                          </tbody>
                                       </table>
                                      </div>
                                      </div>
                                      <div class="tab-pane fade" id="tabs2-tab4" role="tabpanel">
                                       <div class="row">
                                       <div class="col">
                                          <div class="collapse multi-collapse"
                                             id="multiCollapseExample2">
                                             <div class="bg-white p-2">
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
                                                </table>
                                                </div>
                                                     <div align=center>
                                                   <button type="button" type="submit" class="btn btn-outline-info">승인</button>&nbsp;&nbsp;&nbsp;
                                                   <button type="button" type="reset" class="btn btn-outline-info">승인거부</button>                                  
                                       </div>
                                             <br><br><br>
                                          </div>
                                       </div>
                                       <table class="table bg-white text-dark center ass2 table-striped">
                                          <thead class="text-white table-bordered tap">
                                             <tr>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표번호</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">전표종류</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">연결
                                                   ID</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
                                                <th class="font-weight-semi-bold border-top-0 py-3 con2">승인상태</th>
                                             </tr>
                                          </thead>
                                         <tbody>
                                             <tr>
                                                <td class="py-1">
                                                   <p>
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
                                </div>
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
           </div>
   </main>

   <%@ include file="../common/footer.jsp"%>
   <script src="${project}js/graindashboard.js"></script>
   <script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>