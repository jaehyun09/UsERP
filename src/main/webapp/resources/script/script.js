

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
	} else if(!$("input[name='confirm_code']").val() != "1") {
		alert("사원번호 등록 여부를 확인하세요.");
		$("input[name='emp_code_check']").focus();
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
	window.open(url, "사원확인", "menubar=no, width=500, height=400");
}

// 조명재 - 사원확인 팝업 - 사원확인 버튼 클릭
function confirmCheck2() {
	if(!$("input[name='emp_code']").val()) {
		alert("사원번호를 입력하세요.");
		$("input[name='emp_code']").focus();
		return false;
	}
}

// 조명재 - 사원확인 성공 시 사원명 자동입력
function setEmpName(emp_code, emp_name) {
	$("input[name='emp_code']", opener.document).val(emp_code);
	$("input[name='emp_name']", opener.document).val(emp_name);
	$("input[name='confirm_code']", opener.document).val("1");
	self.close();
}

// 조명재 - 인사 발령 전송 클릭
function appointmentCheck() {
	if(!$("input[name='emp_code']").val()) {
		alert("사원번호를 입력하세요.");
		$("input[name='emp_code']").focus();
		return false;
	} else if($("input[name='ap_cur_dep']").val() == 0) {
		alert("발령 부서를 선택하세요.");
		$("input[name='ap_cur_dep']").focus();
		return false;
	} else if($("input[name='ap_cur_position']").val() == 0) {
		alert("발령 직급을 선택하세요.");
		$("input[name='ap_cur_position']").focus();
		return false;
	} else if(!$("input[name='confirm_code_ap']").val() != "1") {
		alert("사원번호를 확인하세요.");
		$("input[name='emp_code_check_ap']").focus();
		return false;
	}
}

// 조명재 - 인사 발령 - 사원번호 확인 버튼 클릭
function hrConfirmAppoint() {
	if(!$("input[name='emp_code']").val()) {
		alert("사원번호를 입력하세요.");
		$("input[name='emp_code']").focus();
		return false;
	}
	
	var url ="hrConfirmAppoint?emp_code=" + $("input[name='emp_code']").val(); 
	window.open(url, "사원확인", "menubar=no, width=500, height=400");
}

// 조명재 - 사원확인 성공 시 사원명, 현재부서, 현재직급 자동입력
function setEmpInfo(emp_code, emp_name, dep_name, hr_code_name) {
	$("input[name='emp_code']", opener.document).val(emp_code);
	$("input[name='emp_name']", opener.document).val(emp_name);
	$("input[name='ap_pre_dep']", opener.document).val(dep_name);
	$("input[name='ap_pre_position']", opener.document).val(hr_code_name);
	$("input[name='confirm_code_ap']", opener.document).val("1");
	self.close();
}

