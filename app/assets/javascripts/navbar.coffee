# Navbar background-shadow appears on scrolldown if screen > 768px

scroll_length = 0

$(document).ready ->
  $('button.navbar-toggle').on 'click', ->
    $('nav').toggleClass 'menu-down'
    if scroll_length < 20
      $('nav').toggleClass 'nav-shadow'
    return
  return

$(window).scroll ->
	scroll_length = $(document).scrollTop()
	if $(document).scrollTop() > 20
		$('nav').addClass 'nav-shadow'
	else
		$('nav').removeClass 'nav-shadow' unless $('nav').hasClass 'menu-down'
	return
  