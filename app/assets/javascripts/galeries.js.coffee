# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#galery_city_id').parent().hide()
	cities = $('#galery_city_id').html()
	$('#temp_state_id').change ->
		state = $('#temp_state_id :selected').text()
		options = $(cities).filter("optgroup[label='#{state}']").html()
		if options
			$('#galery_city_id').html(options)
			$('#galery_city_id').parent().show()
		else
			$('#galery_city_id').empty()
			$('#galery_city_id').parent().hide()
