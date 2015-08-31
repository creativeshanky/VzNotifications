$(document).ready(function(){
	//$('btn:not(.disabled")')
	var $form = $("#notificationForm");
	$('.btn:not(".disabled")').on('click',function(){
		if($(this).hasClass('feedback'))
			$form.find('textarea').val("Collect feedback");
		else
			$form.find('textarea').val("pay your bills");
		$('form input[type=submit]').trigger('click');
	});
	
});