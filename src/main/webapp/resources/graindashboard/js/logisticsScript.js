/**
 * Validation check
 */
var pwdError ="비밀번호가 일치하지 않습니다.\n확인 후 다시 시도하세요.";
var updateError ="상품 수정에 실패했습니다.\n확인 후 다시 시도하세요.";
var deleteError ="구매취소가 실패했습니다.\n확인 후 다시 시도하세요.";
var insertWareError ="창고등록이 실패했습니다.\n확인 후 다시 시도하세요.";
var insertError2 = "장바구니 담기에 실패했습니다.\n확인 후 다시 시도하세요.";


function errorAlert(msg){
	alert(msg);
	window.history.back();
}
