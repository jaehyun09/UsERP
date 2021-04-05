<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<%@ include file = "../../setting.jsp" %> 
<link rel="stylesheet" href="${project}css/graindashboard.css">
<script type="text/javascript" src="${project}script/logisticsScript.js"></script>
 
<body>
	
	<c:if test="${insertCnt == 0}">
		<script type="text/javascript">
			errorAlert(stockMoveFailError);
		</script>
	</c:if>
	
	<c:if test="${insertCnt != 0 && updateCnt == 0}">
		<script type="text/javascript">
			errorAlert(SoUpdateError);
		</script>
	</c:if>
	
	<c:if test="${insertCnt != 0 && updateCnt != 0}">
		<script type="text/javascript">
			setTimeout(function() {
				alert("승인되었습니다.");
				window.location="ldInventoryControl";
			}, 1000);
		</script>
	</c:if>
</body>
</html>