
	//게시글 삭제 비밀번호 확인
	$('#dbtn').click(function(){
	var pass = $('#password1').val();
	var pass2 = $('#password2').val();
	
	if(pass==pass2){
		return true;
	}else{
		alert("비밀번호가 맞지 않습니다.");
		event.preventDefault();
	}
	
	});

	//게시글 수정 비밀번호 확인
	$('#ubtn').click(function(){
	var pass = $('#password1').val();
	var pass2 = $('#password2').val();
	
	if(pass==pass2){
		return true;
	}else{
		alert("비밀번호가 맞지 않습니다.");
		event.preventDefault();
	}
	
	})
	
  



