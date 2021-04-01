<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function content() {
	var coon = $('input:hidden[name="code"]').val();
	var param = "&${_csrf.parameterName}=${_csrf.token}&coon=" + coon;
	alert(coon);
   $.ajax({
      type:"POST",
	  data:param,
	  url:'content',
      success: function(data){ // 콜백함수 - 전송에 성공했을 때의 결과가 data변수에 전달된다.
         $('#content').html(data);
      },
      error: function(){
         alert('오류');
      }
   });
}


</script> 

<%@ include file="../../setting.jsp"%>
</head>
<body>
	<div class="tab-pane fade show active" id="tabs2-tab1" role="tabpanel">
		<div class="row">
			<div class="col">
				<div class="collapse multi-collapse" id="multiCollapseExample1">
					<div id="content"></div>
				</div>
			</div>

			<table class="table bg-white text-dark center ass2 table-striped">

				<thead class="text-white table-bordered tap">
					<tr>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">전표번호</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">전표종류</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">담당자</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">등록일</th>
						<th class="font-weight-semi-bold border-top-0 py-3 con2">승인상태</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach var="vo" items="${statement}">
						<c:if test="${vo.accs_state == 1 }">

							<tr>
								<td class="py-1 ">
									<p>
										<a class="btn" data-toggle="collapse"
											href="#multiCollapseExample1" role="button"
											aria-expanded="false" aria-controls="multiCollapseExample1"
											onclick="content()" ><input type="hidden" name="code" id="accs_code"
											value=${vo.accs_code }>
											${vo.accs_code}</a>
											
									</p>
								</td>
								<c:if test="${vo.accs_type == 1 }">
									<td class="py-1 " style="vertical-align: middle">판매 전표</td>
								</c:if>
								<c:if test="${vo.accs_type == 3 }">
									<td class="py-1 " style="vertical-align: middle">채권 전표</td>
								</c:if>
								<c:if test="${vo.accs_type == 2 }">
									<td class="py-1 " style="vertical-align: middle">판매 전표</td>
								</c:if>
								<c:if test="${vo.accs_type == 4 }">
									<td class="py-1 " style="vertical-align: middle">채무 전표</td>
								</c:if>
								<td class="py-1 " style="vertical-align: middle">${vo.employee.emp_name}</td>
								<td class="py-1 " style="vertical-align: middle"><fmt:formatDate
										pattern="yyyy-MM-dd" value="${vo.accs_reg_date}" /></td>
								<td class="py-1 " style="vertical-align: middle">승인완료</td>
							</tr>
						</c:if>
					</c:forEach>

				</tbody>
			</table>
		</div>
		</div>
</body>
</html>