//게시글 삭제 비밀번호 확인
$('#dbtn').click(function() {
	var pass = $('#password1').val();
	var pass2 = $('#password2').val();

	if (pass == pass2) {
		return true;
	} else {
		alert("비밀번호가 맞지 않습니다.");
		event.preventDefault();
	}

});

// 게시글 수정 비밀번호 확인
$('#ubtn').click(function() {
	var pass = $('#password1').val();
	var pass2 = $('#password2').val();

	if (pass == pass2) {
		return true;
	} else {
		alert("비밀번호가 맞지 않습니다.");
		event.preventDefault();
	}

});

// 주문취소 버튼을 눌렀을때 확인창
$(document).on("click", "#obtn", function() {
	var result = confirm('정말 주문을 취소 하시겠습니까?');

	if (result) {

	} else {
		event.preventDefault();
	}
});

// 매장찾기 검색했을때 널일경우

$('#findstore').click(function() {
	var store = $('#store').val();

	if (store != null) {
		return true;
	} else {
		alert("매장을 검색하세요");
		event.preventDefault();
	}

});
