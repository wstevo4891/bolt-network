carousels_resize = ->
	$screen_width = $(window).width()

	if $screen_width >= 1400
		data = { batch: 6 }
		batch = 6
	else if $screen_width < 1400 and $screen_width >= 1200
		data = { batch: 5 }
		batch = 5
	else if $screen_width < 1200 and $screen_width >= 800
		data = { batch: 4 }
		batch = 4
	else if $screen_width < 800 and $screen_width >= 500
		data = { batch: 3 }
		batch = 3
	else if $screen_width <= 499
		data = { batch: 2 }
		batch = 2

	console.log "batch: #{batch}"

	ajax:
		type: 'GET'
		url: "/pages/slide_batch"
		data: data
		dataType: 'json'
		converters: { 'text json': true }
		error: (response, status, err) ->
			console.log "fuck balls"
			console.log err
		success: (data) ->
			console.log "data: #{data}"
			console.log "It worked!"


$(document).ready carousels_resize

$(window).resize carousels_resize
