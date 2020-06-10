/**
 * 
 */

$(function(){
    //*****************
    //header.jsp
    //로그인 클릭시 슬라이드로 로그인화면 보여줌
    //*****************
    $("#login-header-up").click(function(){
        $(".login-header").slideUp(500);
    });
    
    $("#login").click(function(){
        $(".login-header").slideDown(500);
    });
    //*****************
    //signup-form.jsp
    //submit 엔터로 날라가는거 막기
    //*****************
    $('#frm input[type="text"]').keydown(function() {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    });
    //*****************
    //header.jsp
    //ajax로 로그인후 새로고침 변환
    //*****************
    $('#frm').submit(function(){
    	event.preventDefault();
        if($("#login_password").val()===""){
           alert("암호를 입력하세요");
        }else{
            $.ajax({
                type:'post',
                async:true,
                url : 'login.do',
                contentType :'application/x-www-form-urlencoded;charset=UTF-8',
                data : "email="+ $('#email').val() + "&password="+$('#login_password').val(),
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
        }
    });
    
   
    //*****************
    //header.jsp
    //ajax로 로그아웃 요청 보내고 성공시 리로드(index화면으로)
    //*****************
    $('#logout').click(function(){
    	event.preventDefault();
        $.ajax({
            type:'post',
            async : true,
			url : 'logout.do',
            contentType :'application/x-www-form-urlencoded;charset=UTF-8',
            success : function(resultData){
            	//window.location.reload();
            	window.location = "index2.jsp";
//            	window.location=document.referrer;
            }
        });	
    });

    
    $('#update_password1').focusout(function () {
        var pwd1 = $("#update_password1").val();
        var regexp = RegExp("[a-zA-Z0-9]{8,16}");
        if(regexp.test(pwd1)===false)
            $("#pass").html("영문자 혹은 0-9 8자리~16자리");
        else
            $("#pass").html("유효한 비밀번호입니다.");
    });
    
    $('#update_password2').focusout(function () {
        var pwd1 = $("#update_password1").val();
        var pwd2 = $("#update_password2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#passcheck").html("비밀번호가 일치합니다");
            } else {
                $("#passcheck").html("비밀번호가 불일치합니다");
            }
        }
    });
    
    $('#updateform input').keydown(function() {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    });
    $("#findpostcode").click(function(){
        execDaumPostcode();
    });
    
     $("#signupemail").focusout(function(){
        $.ajax({
                type:'post',
                async:true,
                url : 'checkEmail.do',
                contentType :'application/x-www-form-urlencoded;charset=UTF-8',
                data : "email="+ $("#signupemail").val(),
                success : function(resultData){
                    $("#signupsup").html(resultData);
                }
        });
        if($("#signupemail").val()==="")
            $("#signupsup").html("이메일을 쓰세요.");
    });
    $("#signup_form input").keydown(function() {
        if (event.keyCode === 13) {
            event.preventDefault();
        }
    });
    
    $("#signupemail").keydown(function(){
        $.ajax({
                type:'post',
                async:true,
                url : 'checkEmail.do',
                contentType :'application/x-www-form-urlencoded;charset=UTF-8',
                data : "email="+ $("#signupemail").val(),
                success : function(resultData){
                    $("#signupsup").html(resultData);
                }
        });
        if($("#signupemail").val()==="")
            $("#signupsup").html("이메일을 쓰세요.");
    });
    
    $('#signup_password1').focusout(function () {
   
        var pwd1 = $("#signup_password1").val();
        var regexp = RegExp("[a-zA-Z0-9]{8,16}");
        if(regexp.test(pwd1)===false){
            $("#pass").html("영문자 혹은 0-9 8자리~16자리");
            passcheck = false;
        }
        else{
            $("#pass").html("유효한 비밀번호입니다.");
            passcheck = true;
        }
    });
    
    var passcheck = false;
    $('#signup_password1').keydown(function () {
   
        var pwd1 = $("#signup_password1").val();
        var regexp = RegExp("[a-zA-Z0-9]{8,16}");
        if(regexp.test(pwd1)===false){
            $("#pass").html("영문자 혹은 0-9 8자리~16자리");
            passcheck = false;
        }
        else{
            $("#pass").html("유효한 비밀번호입니다.");
            passcheck = true;
        }
    });
    
   
    $('#signup_password2').focusout(function () {
        var pwd1 = $("#signup_password1").val();
        var pwd2 = $("#signup_password2").val();
 
        if ( pwd1 != '' && pwd2 == '' ) {
            null;
        } else if (pwd1 != "" || pwd2 != "") {
            if (pwd1 == pwd2) {
                $("#passcheck").html("비밀번호가 일치합니다");
                passcheck = true;
            } else {
                $("#passcheck").html("비밀번호가 불일치합니다");
                passcheck = false;
            }
        }
    });
    //*****************
    //signup-form.jsp
    //취소버튼
    //*****************
    $('.signup-btn button').click(function(){
       event.preventDefault();
        history.back(); //이전 히스토리 가기
    });
    
    //*****************
    //signup-form.jsp
    //submit validation check
    //*****************
    $('#signup_form input[type=submit]').click(function(){
        var vali = false;
        var passvali=/[0-9a-zA-Z]{8,16}/i;
        var emailvali=/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        var phonevali=/[0-9]{10,13}/;
        if($('#name').val()==="")
        {
            alert("이름을 작성하세요");return false;        
        }
        else if($('#signup_password1').val()==="")
        {
            alert("비밀번호를 입력하세요.");return false;    
        }else if(!passvali.test($('#signup_password1').val())){
            alert("비밀번호 양식이 다릅니다."); return false;  
        }
        else if($('#signup_password2').val()==="")
        {
            alert("비밀번호 확인을 입력하세요."); return false;       
        }
        else if($('#signup_password1').val()!==$('#signup_password2').val())
        {
            alert("비밀번호 확인이 다릅니다.");return false;        
        }
        else if($('#signupemail').val()==="")
        {
            alert("이메일을 입력하세요.");return false;
        }else if(!emailvali.test($('#signupemail').val())){
            alert("이메일 양식이 다릅니다.");return false;   
        }
        else if($('#phoneNumber').val()===""){
            alert("전화번호를 입력하세요.");return false;
        }
        else if(phonevali.test($('#phoneNumber').val())){
            alert("전화번호는 숫자 10~13자리입니다.");return false;
        }
        else if($("input:checkbox[id=essencialCheck1]").is(":checked") == false) {
            alert("개인정보 처리방침에 동의 하셔야합니다.");
            return false;
        }
        else if($("input:checkbox[id=essencialCheck2]").is(":checked") == false) {
            alert("개인정보의 수집 및 이용에 동의 하셔야합니다.");
            return false;
        }
        else
            vali = true;
        if(vali === true)
            $('#signup_form').submit();
    });
    //*****************
    //update_member.jsp
    //취소버튼
    //*****************
    $('.update-btn button').click(function(){
        event.preventDefault();
        history.back(); //이전 히스토리 가기
    });
    
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                   // document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    //cument.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('updatepostcode').value = data.zonecode;
                document.getElementById("updateaddress").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("updatedetailaddress").focus();
            }
        }).open();
    }
    
});