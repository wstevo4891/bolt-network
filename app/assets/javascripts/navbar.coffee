# Navbar background-shadow appears on scrolldown if screen > 768px

navbar_main = ->
  scroll_length = 0
  input = $('.searchInput')
  box = $('.searchBox');
  remove_shadow = ->
    $('nav').removeClass 'nav-shadow'
    return

  # NAVBAR SHADOW FUNCTIONS
  #====================================

  $('button.navbar-toggle').on 'click', ->
    $('nav').toggleClass 'menu-down'
    if scroll_length < 20 and !$('nav').hasClass('nav-shadow')
      $('nav').addClass 'nav-shadow'
    else if scroll_length < 20 and $('nav').hasClass('nav-shadow')
      delay_shadow = setTimeout(remove_shadow, 300)
    return

  $(window).scroll ->
    scroll_length = $(document).scrollTop()
    if $(document).scrollTop() > 20
      $('nav').addClass 'nav-shadow'
    else
      $('nav').removeClass 'nav-shadow' unless $('nav').hasClass 'menu-down'
    return

  # SEARCH BAR FUNCTIONS
  #======================================

  box.on 'click', ->
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

  $(".searchMobile").on 'keyup', '.search-input-mobile', ->
  	foo = $(this).val().length
  	if foo > 0
  		$('#closeIcon-mobile').show()
  	else
  		$('#closeIcon-mobile').hide()
  	return

  $('#closeIcon-mobile').bind 'click', ->
    $('.search-input-mobile').val("")
    $('#closeIcon-mobile').hide()
    return

  $('.searchInput').on 'keyup', '.search-input-large', ->
    bar = $(this).val().length
    if bar > 0
      $('#closeIcon').show()
    else
      $('#closeIcon').hide()
    return

  $('#closeIcon').bind 'click', ->
    $('.search-input-large').val("")
    $('#closeIcon').hide()
    return
  return

$(document).ready navbar_main
