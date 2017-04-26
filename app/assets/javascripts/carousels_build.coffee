make_carousel = ($target)->
  $target.unslider arrows:
    prev: '<a class="unslider-arrow prev"><i class="fa fa-angle-left"></i></a>'
    next: '<a class="unslider-arrow next"><i class="fa fa-angle-right"></i></a>'
  return

carousels_build = (data) ->
	$.ajax
		type: 'GET'
		url: "/pages/slide_batch"
		data: data
		dataType: 'json'
		converters: { 'text json': true }
		error: (response, status, err) ->
			console.log "fuck balls"
			console.log err
		success: (data) ->
			# console.log "data: #{data}"
			console.log "It worked!"
			$('#carousels_render').html(data)

			# carousel_regex = /\.slider-[A-Z][a-z]+/
			# $("#{carousel_regex}").each ->
			#   make_carousel($(this))

			make_carousel($('.slider-Action'))
			make_carousel($('.slider-Comedy'))
			make_carousel($('.slider-Drama'))
			make_carousel($('.slider-Animation'))
			make_carousel($('.slider-Family'))
			make_carousel($('.slider-Fantasy'))
			make_carousel($('.slider-Romance'))
			make_carousel($('.slider-Horror'))
			make_carousel($('.slider-Sci-Fi'))
	return


carousels_init = ->
	$screen_width = $(window).width() + 15

	if $screen_width >= 1400
		data = { batch: 6 }
	else if $screen_width < 1400 and $screen_width >= 1200
		data = { batch: 5 }
	else if $screen_width < 1200 and $screen_width >= 800
		data = { batch: 4 }
	else if $screen_width < 800 and $screen_width >= 500
		data = { batch: 3 }
	else if $screen_width <= 499
		data = { batch: 2 }

	console.log "batch: #{JSON.stringify(data)}"
	carousels_build(data)

	setTimeout (->
		$('li.max-92').each ->
			$(this).css('width', '92vw')
			$(this).children(':first').addClass 'first-poster'
			$(this).children(':last').addClass 'last-poster'
		return
	), 1000
	return


carousels_rebuild = ->
	$screen_width = $(window).width() + 15
	console.log "screen width: #{$screen_width}"

	if $screen_width == 1400
		data = { batch: 6 }
		console.log "batch: #{JSON.stringify(data)}"
		carousels_build(data)

	else if $screen_width == 1399 or $screen_width == 1200
		data = { batch: 5 }
		console.log "batch: #{JSON.stringify(data)}"
		carousels_build(data)

	else if $screen_width == 1199 or $screen_width == 800
		data = { batch: 4 }
		console.log "batch: #{JSON.stringify(data)}"
		carousels_build(data)

	else if $screen_width == 799 or $screen_width == 500
		data = { batch: 3 }
		console.log "batch: #{JSON.stringify(data)}"
		carousels_build(data)

	else if $screen_width == 499
		data = { batch: 2 }
		console.log "batch: #{JSON.stringify(data)}"
		carousels_build(data)

	setTimeout (->
		$('li.max-92').each ->
			$(this).css('width', '92vw')
			$(this).children(':first').addClass 'first-poster'
			$(this).children(':last').addClass 'last-poster'
		return
	), 1000
	return


$(document).ready carousels_init

$(window).resize carousels_rebuild
