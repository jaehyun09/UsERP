

// 김은희 - 인사카드 등록 체크
function CardCheck() {
	if(!document.hrCardform.emp_photo.value) {
		alert("사진을 입력하세요.");
		document.hrCardform.emp_photo.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_code.value) {
		alert("사번을 입력하세요.");
		document.hrCardform.emp_code.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_name.value) {
		alert("사원명을 입력하세요.");
		document.hrCardform.emp_name.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_jumin.value) {
		alert("주민등록번호를 입력하세요.");
		document.hrCardform.emp_jumin.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_address.value) {
		alert("주소를 입력하세요.");
		document.hrCardform.emp_address.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_phone.value) {
		alert("휴대전화를 입력하세요.");
		document.hrCardform.emp_phone.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_email.value) {
		alert("이메일을 입력하세요.");
		document.hrCardform.emp_email.focus();
		return false;
	}
	
	if(!document.hrCardform.emp_account.value) {
		alert("급여 계좌를 입력하세요.");
		document.hrCardform.emp_account.focus();
		return false;
	}
	
	if(document.hrCardform.hiddenEmp_code.value == "0") { 
		alert("중복확인을 해주세요.");
		document.hrCardform.dupChk.focus();
		return false;
	}
}

// 김은희 - 인사카드 중복확인 버튼 클릭
function confirmCode() {
	if(!document.hrCardform.emp_code.value) {
		alert("사번을 입력하세요.");
		document.hrCardform.emp_code.focus();
		return false;
	}
		 
	var url ="hrConfirmCode?emp_code=" + document.hrCardform.emp_code.value; 
	window.open(url, "confirm", "menubar=no, width=500, height=400");
}

function confirmCodeFocus() {
	document.confirmform.emp_code.focus();
}
 
function confirmCodeCheck() {
	if(!document.confirmform.emp_code.value) {
		alert("사번을 입력하세요.");
		document.confirmform.emp_code.focus();
		return false;
	}
}
 
function setCode(emp_code) {
	opener.document.hrCardform.emp_code.value=emp_code; 
	opener.document.hrCardform.hiddenEmp_code.value=1; 
	self.close();
}
 
// 김은희 - 근태 신청 체크
function waCheck() {
	
	if(!document.waForm.emp_code.value) {
			alert("사번을 입력하세요.");
			document.waForm.emp_code.focus();
			return false;
		}
		
	 if(!document.waForm.emp_name.value) {
			alert("사원명을 입력하세요.");
			document.waForm.emp_name.focus();
			return false;
	    }
	
	 if(document.waForm.hiddenEmp_code.value == "0") { 
		 alert("사번확인을 해주세요.");
		 document.waForm.dupChk.focus();
		 return false;
	 }
}
	
// 김은희 - 근태 신청 사원확인 버튼 클릭
function confirmEmp_Code() {
	if(!document.waForm.emp_code.value) {
		alert("사번을 입력하세요.");
		document.waForm.emp_code.focus();
		return false;
	}
	
	var url ="empComfirm?emp_code=" + document.waForm.emp_code.value; 
	window.open(url, "confirm", "menubar=no, width=500, height=400");
}


function confirmWaFocus() {
	document.confirmWaform.emp_code.focus();
}


function confirmCodeCheck() {
	if(!document.confirmWaform.emp_code.value) {
		alert("사번을 입력하세요.");
		document.confirmWaform.emp_code.focus();
		return false;
	}
}


function setName(emp_name) {
	opener.document.waForm.emp_name.value=emp_name; 
	opener.document.waForm.hiddenEmp_code.value=1; 
	self.close();
}

