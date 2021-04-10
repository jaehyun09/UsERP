<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./setting.jsp" %>
<html>
<body>
	<c:if test="${enabled == 1}">
		<script type="text/javascript">
			alert("이미 사원 확인이 완료되었습니다. \n로그인 화면으로 이동합니다.");
			window.location="${path}/main";
		</script>
	</c:if>
	<c:if test="${enabled == 0 && updateCnt == 0}}">
		<script type="text/javascript">
			alert("인증을 실패했습니다. \n확인 후 다시 시도해 주십시오.");
			window.history.back();
		</script>
	</c:if>	
	<c:if test="${updateCnt == 1}">
		<script type="text/javascript">
			alert(${emp_name} + "님 환영합니다.");
			window.location="${path}/main";
		</script>
	</c:if>
</body>
</html>