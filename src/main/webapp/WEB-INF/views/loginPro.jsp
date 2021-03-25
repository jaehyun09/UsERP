<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "setting.jsp" %>
<html>
<body>
<c:if test = "${grade == 0}">
<script type="text/javascript">
	errorAlert("아이디가 존재하지 않습니다.");
</script>
</c:if>

<c:if test = "${grade == -1}">
<script type="text/javascript">
	errorAlert("비밀번호가 일치하지 않습니다.");
</script>
</c:if>

<c:if test = "${grade== 1}">
<script type="text/javascript">
	alert("로그인 하였습니다.!!");
	window.location = "main.do"
</script>
</c:if>

<c:if test = "${grade== 3}">
<script type="text/javascript">
	errorAlert("이메일 인증하고 오세요.");
</script>
</c:if>

<c:if test = "${msg != null}">
      <script type="text/javascript">
         alert("${msg}");
      </script>
</c:if>
   
</body>
</html>