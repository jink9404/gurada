


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

	
  
  