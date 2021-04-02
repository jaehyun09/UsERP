

// 조명재 - 사원확인 전송 클릭
function signinCheck() {
	if(!$("input[name='emp_code']").val()) {
		alert("사원번호를 입력하세요.");
		$("input[name='emp_code']").focus();
		return false;
	} else if(!$("input[name='emp_pwd']").val()) {
		alert("비밀번호를 입력하세요.");
		$("input[name='emp_pwd']").focus();
		return false;
	} else if(!$("input[name='re_emp_pwd']").val()) {
		alert("비밀번호를 입력하세요.");
		$("input[name='re_emp_pwd']").focus();
		return false;
	} else if($("input[name='emp_pwd']").val() != $("input[name='re_emp_pwd']").val()) {
		alert("비밀번호가 일치하지 않습니다.");
		$("input[name='re_emp_pwd']").val("");
		$("input[name='re_emp_pwd']").focus();
		return false;
	} else if(!$("input[name='emp_jumin']").val()) {
		alert("주민등록번호를 입력하세요.");
		$("input[name='emp_jumin']").focus();
		return false;
	} else if(!$("input[name='confirm_code']").val() == "0") {
		alert("사원번호 등록 여부를 확인하세요.");
		$("input[name='confirm_code']").focus();
		return false;
	}
}

// 조명재 - 사원확인 - 사원확인 버튼 클릭
function confirmCheck() {
	if(!$("input[name='emp_code']").val()) {
		alert("사원번호를 입력하세요.");
		$("input[name='emp_code']").focus();
		return false;
	}
	
	var url ="confirm?emp_code=" + $("input[name='emp_code']").val(); 
	window.open(url, "confirm", "menubar=no, width=500, height=400");
}

// 조명재 - 사원확인 성공 시 사원명 자동입력
function setEmpName(emp_code, emp_name) {
	$("input[name='emp_code']", opener.document).val(emp_code);
	$("input[name='emp_name']", opener.document).val(emp_name);
	$("input[name='confirm_code']", opener.document).val("1");
	self.close();
}

function test() {
	$("input[name='emp_code']", opener.document).val(emp_code);
	$("input[name='emp_name']", opener.document).val(emp_name);
	$("input[name='confirm_code']", opener.document).val("1");
	self.close();
}

