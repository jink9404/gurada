


var proQty = $('.pro-qty');
proQty.prepend('<span class="dec qtybtn">-</span>');
proQty.append('<span class="inc qtybtn">+</span>');
proQty.on('click', '.qtybtn', function () {
    var $button = $(this);
    var oldValue = $button.parent().find('input').val();
    if ($button.hasClass('inc')) {
        var newVal = parseInt(oldValue) + 1;
        var price = parseInt($('#price').text());
        $('#total').text(newVal*price);
        $('#total2').val(newVal*price);
        $('#total3').val(newVal*price);
        $('#quantity1').val(newVal);
        $('#quantity2').val(newVal);
    } else {
        var newVal1 = parseInt(oldValue) - 1;
        var price = parseInt($('#price').text());
        $('#total').text(newVal1*price);
        $('#quantity1').val(newVal);
        $('#quantity2').val(newVal);
        $('#total2').val(parseInt(newVal1*price));
        $('#total3').val(parseInt(newVal1*price));
    	// Don't allow decrementing below zero
    	if (oldValue > 0) {
            var newVal = parseFloat(oldValue) - 1;
        } else {
            newVal = 0;
        }
    }
    $button.parent().find('input').val(newVal);
});

$('#back').click(function(){
	history.back(-2);
});


$('#submit').click(function(){
	alert($('#total').val())
	var session = $('#pdSession').val();
	
	if($('#product-quantity').val() == 0){
		alert("수량을 확인하여 주십시오");
		event.preventDefault();
	}else{
		if(session == ""){
			alert("로그인 후 이용 가능합니다");
			event.preventDefault();
		}else{
			alert("상품이 장바구니에 추가되었습니다");
			return true;
		}
		
	}
});

$('#submit1').click(function(){
	var session = $('#pdSession').val();
	
	if($('#product-quantity').val() == 0){
		alert("수량을 확인하여 주십시오");
		event.preventDefault();
	}else{
		if(session == ""){
			alert("로그인 후 이용 가능합니다");
			event.preventDefault();
		}else{
			alert("상품이 장바구니에 추가되었습니다");
			return true;
		}
		
	}
});

$('#prodinsert').click(function(){
	if($("#prodname").val() == ""){
		alert("상품명을 입력해주세요");
		event.preventDefault();
	}else if($("#prodcount").val() == ""){
		alert("수량을 입력해주세요");
		event.preventDefault();
	}else if($("#prodprice").val()==""){
		alert("가격을 등록해주세요");
		event.preventDefault();
	}else if($("#proddetail").val()==""){
		alert("상품설명을 등록해주세요");
		event.preventDefault();
	}else{
		alert("상품이 등록되었습니다.");
	}
})



$('#findstore').click(function(){
	if($('#store').val() ==""){
		alert("매장명을 입력해 주세요");
		event.preventDefault();
	}else{
		return true;
	}
})

$('#visit').click(function(){
	if($('#location').val()==""){
		alert("방문하실 매장을 검색해주세요");
		event.preventDefault();
	}else {
		return true;
	}
})




	
  



