posters_hover =->
  $carousels_container = $('#carousels-container')
  $genres_container = $('#genres-container')

  $('.poster').hover (->
    parent_li =  $(this).parent()
    setTimeout (->
      parent_li.addClass('auto-width')
    ), 500

    if $carousels_container.length > 0
      if $(this).hasClass 'first-poster'
        $(this).closest('ul').removeClass 'last-slide-translate'
        $(this).closest('ul').removeClass 'slide-list'

      else if $(this).hasClass 'last-poster'
        $(this).closest('ul').removeClass 'slide-list'
        $(this).closest('ul').addClass 'last-slide-translate'

      else
        $(this).closest('ul').removeClass 'last-slide-translate'
        $(this).closest('ul').addClass 'slide-list'

    else if $genres_container.length > 0
      if $(this).hasClass 'first-poster'
        $(this).parent().removeClass 'last-slide-translate'
        $(this).parent().removeClass 'slide-list'

      else if $(this).hasClass 'last-poster'
        $(this).parent().removeClass 'slide-list'
        $(this).parent().addClass 'last-slide-translate'

      else
        $(this).parent().removeClass 'last-slide-translate'
        $(this).parent().addClass 'slide-list'

  ), ->
    parent_li = $(this).parent()
    parent_li.mouseleave ->
      # parent_li.animate width: '92vw'
      setTimeout (->
        parent_li.removeClass('auto-width')
      ), 1100

make_carousel = ($target)->
	$target.unslider arrows:
		prev: '<a class="unslider-arrow prev"><i class="fa fa-angle-left"></i></a>'
		next: '<a class="unslider-arrow next"><i class="fa fa-angle-right"></i></a>'
	return

lookup_genres = ->
	$.ajax
		type: 'GET'
		url: "/lookup/genres"
		data: {}
		dataType: 'json'
		converters: { 'text json': true }
		error: (response, status, err) ->
			console.log "fuck balls"
			console.log err
		success: (data) ->
			console.log "Successfully looked up genres"
			# console.log "data: #{JSON.stringify(data)}"
			return data


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
			# Loop through genres and build a carousel for each one
			console.log "Building movie carousels"
			#
			# for genre in genres
			# 	 make_carousel($(".slider-#{genre}"))
			#
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
	console.log "Getting Screen Width"
	$screen_width = $(window).width() + 15

	console.log "Building data object"
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
	console.log "batch: #{JSON.stringify(data)}\n"
	# $genres = lookup_genres()
	# console.log "genres: #{$genres}\n"
	carousels_build(data)
	setTimeout (->
		$('li.max-92').each ->
			# $(this).css('width', '92vw')
			$(this).children(':first').addClass 'first-poster'
			$(this).children(':last').addClass 'last-poster'
		$poster_width = $('.poster').width()
		poster_percent = ($poster_width / $screen_width) * 100
		$('#poster-data').data('poster', poster_percent)
		console.log "poster percent: #{poster_percent}"
		posters_hover()
		return
	), 2000
	return


carousels_rebuild = ->
	$screen_width = $(window).width() + 15
	$poster_percent = $('#poster-data').data('poster')
	$poster_percent_init = parseFloat($poster_percent)
	console.log "poster init: #{$poster_percent_init}"
	$poster_width = $('.poster').width()
	$poster_percent_now = ($poster_width / $screen_width) * 100
	console.log "poster now: #{$poster_percent_now}"
	poster_diff = Math.abs($poster_percent_init - $poster_percent_now)
	console.log "poster diff: #{poster_diff}"
	if poster_diff >= 3
		carousels_init()
		console.log Array(16).join("wat" - 1) + " Batman!"
	return


$(document).ready carousels_init

# $(window).resize carousels_rebuild
