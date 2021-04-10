<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file = "./setting.jsp" %> 
<head>
    <!-- Title -->
    <title>UsERP</title>

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

<%@ include file = "./common/header.jsp" %> 
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
						<a class="side-nav-menu-link ass2" href="${path}/hrBasicReg">기초 등록</a>
					</li>
					<li class="side-nav-menu-item">
						<a class="side-nav-menu-link ass2" href="${path}/hrAppointment">인사 발령</a>
                    </li>
                    <li class="side-nav-menu-item">
                        <a class="side-nav-menu-link ass2" href="${path}/hrCard">인사 카드</a>
					</li>
					<li class="side-nav-menu-item">
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

    <!-- 내 정보 시작 -->
    <div class="content">
			<div class="py-4 px-3 px-md-4">
				<div class="card">
					<div class="card-body">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">내 정보</a></li>
								<li class="breadcrumb-item active" aria-current="page">수정</li>
							</ol>
						</nav>
						<div class="row">
							<div class="col-xl-12">
								<div id="example" class="mb-9">
									<h4 class="h1 text-dark"><b>
										내 정보 수정 </b><a class="anchorjs-link" href="#example"
											aria-label="Anchor" data-anchorjs-icon="#"></a>
									</h4>
									<div class="mb-3">
										<!-- Tab Content -->
										<div class="tab-content bg-lighter" id="pills-tabContent-1">
											<div class="tab-pane fade p-4 show active"
												id="pills-result-1" role="tabpanel"
												aria-labelledby="pills-result-tab-1">
											
												<!-- 내정보 수정 폼 시작 -->  
							                     <form action="myPageUpdate?${_csrf.parameterName}=${_csrf.token}" name="myPageform" method="post" enctype="multipart/form-data" onsubmit="return pageCheck();">
							                     <table class="table bg-white text-dark center ass2" style="text-align:center">
							                        <tr>
							                           <th class="text-white table-bordered tap py-3 con2" colspan="3"> 인사카드 </th>
							                        </tr>
							                        <tr>
							                           <th style="vertical-align:middle">* 사진</th>
							                           <td><input id="file" type="file" name="emp_photo"></td>
							                        </tr>
							                        <tr>
							                           <th style="vertical-align:middle">* 사번</th>
							                           <td><input type="text" class="form-control" name="emp_code" value="10000" readonly></td>
							                        </tr>
							                        <tr>
							                           <th style="vertical-align:middle">* 사원명</th>
							                           <td> <input type="text" class="form-control" name="emp_name" value="유재석" readonly></td>
							                        </tr>
							                        <tr>
							                           <th style="vertical-align:middle"> * 부서명 </th>
							                           <td>    
							                           <div class="form-group">
							                                <select name="dep_code" class="form-control" id="dep_code">
							                                   <option value="0">부서 선택</option>
							                                <c:forEach var="vo" items="${list3}">
							                                   <option value="${vo.dep_code}">${vo.dep_name}</option>
							                                  </c:forEach>
							                                </select>
							                              </div>
							                            </td>
							                        </tr>
							                        <tr>
							                          <th style="vertical-align:middle"> * 직급</th>
							                           <td>    
							                           <div class="form-group">
							                               <select name="hr_code" class="form-control" id="hr_code">
							                           <option value="0">직급 선택</option>
							                        <c:forEach var="vo" items="${list4}">
							                           <option value="${vo.hr_code}">${vo.hr_code_name}</option>
							                        </c:forEach>
							                        </select>
							                            </div>
							                           </td>
							                        </tr>
							                        <tr>
							                           <th style="vertical-align:middle">* 권한</th>
							                           <td><div class="form-group">
							                                   <select name="emp_authority" class="form-control" id="emp_authority">
							                                       <option value="0">권한 선택</option>
							                                     <option value="ROLE_ADMIN">관리자</option>
							                                     <option value="ROLE_ST">판매팀</option>
							                                     <option value="ROLE_HR">인사팀</option>
							                                     <option value="ROLE_PD">구매팀</option>
							                                     <option value="ROLE_LD">물류팀</option>
							                                     <option value="ROLE_AD">회계팀</option>
							                                   </select>
							                                </div>
							                             </td>
							                         </tr>
							                        <tr>
							                           <th style="vertical-align:middle">* 입사일</th>
							                           <td><input type="date" name="emp_hire_date" class="form-control" id="emp_hire_date" value=""></td>
							                        </tr>
							                        <tr>                                    
							                            <th style="vertical-align:middle">근속연수</th>
							                            <td><input type="text" name="emp_cos" class="form-control" value="7.2"></td>
							                        </tr>
							                        <tr>
							                           <th style="vertical-align:middle"> * 주민등록번호 </th>
							                           <td><input type="text" class="form-control" name="emp_jumin" placeholder="'-'없이 숫자만 입력" value="99081212345678"></td>
							                        </tr>
							                         <tr>
							                     <th style="vertical-align:middle">* 주소</th>
							                     <td>
							                        <input type="text" name="addcode" id="sample6_postcode"
							                        placeholder=" 우편번호" class="form-control" size=8 style="padding: 3px;"></td> 
							                        <td><input type="button" onclick="addressSearch();" class="btn btn-outline-info" value="주소찾기">
							                     </td>
							                  <tr>
							                     <th style="vertical-align:middle"> </th>
							                     <td>
							                        <input type="text" class="form-control" name="add1" id="sample6_address" size=45
							                        placeholder=" 주소">
							      
							                     </td>
							                  </tr>
							                  <tr>
							                     <th style="vertical-align:middle"></th>
							                     <td>
							                        <input type="text" name="add2" class="form-control" id="sample6_address2"
							                        placeholder=" 상세주소" size=45 onchange="addinput();"> 
							                        <input type="hidden" name="address">
							                     </td>
							                  </tr> 
							                      <tr>
						                              <th style="vertical-align:middle">전화번호</th>
						                              <td><input type="tel" name="emp_tel" class="form-control" value="010-8559-1234"></td>
						                           </tr>
						                           <tr>
						                              <th style="vertical-align:middle">* 휴대전화</th>
						                              <td><input type="tel" name="emp_phone" class="form-control" value="010-8559-1234"></td>
						                           </tr>
						                           <tr>                                    
						                              <th style="vertical-align:middle">* 이메일</th>
						                              <td><input type="email" name="emp_email" class="form-control" value="hi863@naver.com"></td>
						                           </tr>
						                           <tr>
						                              <th style="vertical-align:middle">여권번호</th>
						                              <td><input type="text" name="emp_port_no" class="form-control" value=""></td>
						                           </tr>
						                           <tr>
						                              <th style="vertical-align:middle">* 은행</th>
						                              <td><div class="form-group">
						                                      <select name="emp_bank" class="form-control" id="emp_bank">
						                                        <option value="0">은행 선택</option>
						                                        <option value="농협" <c:if test="${vo.emp_bank == '농협'}">selected</c:if>>농협</option>
						                                        <option value="신한">신한</option>
						                                        <option value="기업">기업</option>
						                                        <option value="하나">하나</option>
						                                        <option value="국민">국민</option>
						                                        <option value="우리">우리</option>
						                                        <option value="카카오뱅크">카카오뱅크</option>
						                                      </select>
						                                    </div>
						                              </td>
						                           </tr>
						                           <tr>
						                              <th style="vertical-align:middle">* 급여계좌</th>
						                              <td><input type="text" name="emp_account" class="form-control" value="356-1021-0564-33"></td>
						                           </tr>
						                     </table>
							                  
							                     <div align=center>
							                           <button type="submit" class="btn btn-outline-info">수정</button>&nbsp;&nbsp;&nbsp;
							                           <button type="reset" class="btn btn-outline-info">재입력</button>
							                     </div>
							                  
							                  </form>
							                <!-- 내정보 수정 폼 끝 -->   
                  
											</div>
										</div>
										<!-- End Tab Content -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			
	<!-- 근태 신청 끝-->
						<footer class="footer mt-3">
							<div class="container-fluid">
								<div class="footer-content text-center small">
									<span class="text-muted">&copy; 2021. Team UsERP. all rights reserved.</span>
								</div>
							</div>
						</footer>
					</div>
				</div>
			
      
    
</main>

<%@ include file = "./common/footer.jsp" %> 
<script src="${project}js/graindashboard.js"></script>
<script src="${project}js/graindashboard.vendor.js"></script>

</body>
</html>