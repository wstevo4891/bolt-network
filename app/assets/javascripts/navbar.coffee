# Navbar background-shadow appears on scrolldown if screen > 768px

scroll_length = 0

$(document).ready ->
  $('button.navbar-toggle').on 'click', ->
    $('nav').toggleClass 'menu-down'
    if scroll_length < 20
      $('nav').toggleClass 'nav-shadow'
    return

  input = $('.searchInput')
  box = $('.searchBox');

  box.bind 'click', ->
    box.hide()
    input.show().animate width: '270px'
    return

  $(document).mouseup (e) ->
    width = input.css('width')
    if !input.is(e.target) and input.has(e.target).length == 0 and width == '270px'
      input.animate width: '0px'
      input.delay(5).hide 0
      box.delay(500).show 0
    return

  $('#closeIcon').on 'click', ->
    $('#search').val("")
    $('#closeIcon').hide()
    return

$(window).scroll ->
	scroll_length = $(document).scrollTop()
	if $(document).scrollTop() > 20
		$('nav').addClass 'nav-shadow'
	else
		$('nav').removeClass 'nav-shadow' unless $('nav').hasClass 'menu-down'
	return

$(document).on 'keyup', 'input', ->
	foo = $('#search').val().length
	if foo > 0
		$('#closeIcon').show()
	else
		$('#closeIcon').hide()
	return
  