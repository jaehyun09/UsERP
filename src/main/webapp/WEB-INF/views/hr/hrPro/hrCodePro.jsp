<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<html>
<body>
	<c:if test="${insertCnt == 0}">
		<script type="text/javascript">
			alert("인사 코드 등록을 실패했습니다. \n잠시 후 다시 시도해 주십시오.");
			window.history.back();
		</script>
	</c:if>
	<c:if test="${insertCnt == 1}">
		<script type="text/javascript">
			alert("인사 코드 등록을 완료했습니다.");
			window.location="hrBasicReg";
		</script>
	</c:if>
</body>
</html>