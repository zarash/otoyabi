# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#search_ad_car_model_id').children().empty('')
	$('#temp_car_model_id').hide()
	car_models = $('#temp_car_model_id').html()
	$('#search_ad_brand_id').change ->
		brand = $('#search_ad_brand_id :selected').text()
		options = $(car_models).filter("optgroup[label='#{brand}']").html()
		if options
			$('#search_ad_car_model_id').html(options)
			# $('#search_ad_car_model_id').parent().show()
		else
			$('#search_ad_car_model_id').empty()
			# $('#search_ad_car_model_id').parent().hide()