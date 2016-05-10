# Navbar background-shadow appears on scrolldown

$(window).scroll ->
	if $(document).scrollTop() > 20
		$('nav').addClass 'nav-shadow'
	else
		$('nav').removeClass 'nav-shadow'
	return
