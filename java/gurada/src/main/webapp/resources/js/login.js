/**
 * 
 */

$(function(){
    $('#frm input[type="text"]').keydown(function() {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    });
    $('#frm').submit(function(){
    	event.preventDefault();
        $.ajax({
            type:'post',
            async:true,
			url : 'login.do',
            contentType :'application/x-www-form-urlencoded;charset=UTF-8',
            data : "email="+ $('#email').val() + "&password="+$('#password').val(),
            success : function(resultData){
                if(resultData == '')
                    alert("아이디와 비밀번호를 다시 확인하세요.");
                else{
                    $(".login").css("display","none");
                    $(".login-header").html(resultData);
                    $(".login-header table").css("display","none");
                    $(".login-header").slideUp(500);
                    $(".user-access").html(resultData+'</span>/<a href="" id="logout">로그아웃</a>');
                    window.location.reload();
                }
            }
        });
    });
    
    $('#logout').click(function(){
    	event.preventDefault();
        $.ajax({
            type:'post',
            async:true,
			url : 'logout.do',
            contentType :'application/x-www-form-urlencoded;charset=UTF-8',
            success : function(resultData){
            	window.location.reload();	
//            	window.location=document.referrer;
            }
        });	
    });
})