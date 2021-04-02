<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<%@ include file = "../../common/header.jsp" %> 
<script type="text/javascript" src="${project}js/logisticsScript.js"></script>
 
<body>
	
		<c:if test="${stockBadInsert == 0}">
			<script type="text/javascript">
				errorAlert(insertError2);
			</script>
		</c:if>
		
		<c:if test="${stockBadInsert != 0 && stoBadMinusUpdate != 0 && stsuMoveInsert != 0}">
			<script type="text/javascript">
				setTimeout(function() {
					alert("재고가 이동이 되었습니다.");
					window.location="logMoveWareInsert";
				}, 1000);
			</script>
			
			<c:if test="${stockBadInsert != 0 && stoBadMinusUpdate == 0 || stsuMoveInsert == 0}">
				<script type="text/javascript">
					errorAlert(stockMoveFailError);
				</script>
			</c:if>
		</c:if>
	
		<c:if test="${stoMinusUpdate != 0 && stoPlusUpdate != 0 && stsuMoveInsert != 0}">
			<script type="text/javascript">
				setTimeout(function() {
					alert("재고가 이동이 되었습니다.");
					window.location="logMoveWareInsert";
				}, 1000);
			</script>
		</c:if>
		
		<c:if test="${stoMinusUpdate == 0 || stoPlusUpdate == 0 || stsuMoveInsert == 0}">
			<script type="text/javascript">
				errorAlert(stockMoveFailError);
			</script>
		</c:if>
	
</body>
</html>