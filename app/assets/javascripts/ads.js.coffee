# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#ad_car_model_id').parent().hide()
	car_models = $('#ad_car_model_id').html()
	$('#temp_brand_id').change ->
		brand = $('#temp_brand_id :selected').text()
		options = $(car_models).filter("optgroup[label='#{brand}']").html()
		if options
			$('#ad_car_model_id').html(options)
			$('#ad_car_model_id').parent().show()
		else
			$('#ad_car_model_id').empty()
			$('#ad_car_model_id').parent().hide()

	# make mileage disable
	$('.mile').click ->
		if $(this).val() == 'karkarde' 
			$('#ad_mileage').removeAttr("disabled")
		else 
			$('#ad_mileage').attr("disabled", 'disabled')
			$('#ad_mileage').val('')
