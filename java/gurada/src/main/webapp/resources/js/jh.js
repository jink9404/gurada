


var proQty = $('.pro-qty');
proQty.prepend('<span class="dec qtybtn">-</span>');
proQty.append('<span class="inc qtybtn">+</span>');
proQty.on('click', '.qtybtn', function () {
    var $button = $(this);
    var oldValue = $button.parent().find('input').val();
    if ($button.hasClass('inc')) {
        var newVal = parseFloat(oldValue) + 1;
        var price = parseInt($('#price').text());
        $('#total').text(newVal*price);
        $('#total1').val(newVal*price);
        $('#quantity').val(newVal);
    } else {
        var newVal1 = parseFloat(oldValue) - 1;
        var price = parseInt($('#price').text());
        $('#quantity').val(newVal);
        $('#total1').text(parseInt(newVal1*price));
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
	if($('#product-quantity').val() == 0){
		alert("수량을 확인하여 주십시오");
		event.preventDefault();
	}else{
		alert("상품이 장바구니에 추가되었습니다");
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
	
  



