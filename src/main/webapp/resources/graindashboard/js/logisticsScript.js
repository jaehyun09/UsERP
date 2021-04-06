/**
 * Validation check
 */
var pwdError ="비밀번호가 일치하지 않습니다.\n확인 후 다시 시도하세요.";
var wareModifyError ="창고 정보 수정 처리 과정 중 오류가 발생했습니다.\n확인 후 다시 시도하세요.";
var deleteError ="구매취소가 실패했습니다.\n확인 후 다시 시도하세요.";
var insertWareError ="창고등록이 실패했습니다.\n확인 후 다시 시도하세요.";
var insertadj = "재고조정 처리 과정 중 오류가 발생했습니다.\n확인 후 다시 시도하세요.";
var stockMoveFailError = "재고가 이동되지 않았습니다.\n확인 후 다시 시도하세요.";
var SoUpdateError = "재고수불부 등록 처리 과정 중 오류가 발생했습니다.\n확인 후 다시 시도하세요.";
var stockShortError = "재고이동 처리 과정 중 오류가 발생했습니다.\n확인 후 다시 시도하세요.";


function errorAlert(msg){
	alert(msg);
	window.history.back();
}
