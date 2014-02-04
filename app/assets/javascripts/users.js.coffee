jQuery ->
	#$('#galery_city_id').parent().hide()
	cities = $('#user_city_id').html()
	$('#user_city_id').html('').attr("disabled", 'disabled')
	$('#temp_state_id').change ->
		$('#user_city_id').removeAttr("disabled")
		state = $('#temp_state_id :selected').text()
		options = $(cities).filter("optgroup[label='#{state}']").html()
		if options
			$('#user_city_id').html(options)
			$('#user_city_id').parent().show()
		else
			$('#user_city_id').empty()
			$('#user_city_id').parent().hide()