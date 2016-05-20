# Navbar background-shadow appears on scrolldown if screen > 768px

navbar_main = ->

  # NAVBAR SHADOW FUNCTIONS
  #====================================

  scroll_length = 0
  $nav = $('nav')
  remove_shadow = ->
    $nav.removeClass 'nav-shadow'
    return

  $('button.navbar-toggle').on 'click', ->
    $nav.toggleClass 'menu-down'
    if scroll_length < 20 and !$nav.hasClass('nav-shadow')
      $nav.addClass 'nav-shadow'
    else if scroll_length < 20 and $nav.hasClass('nav-shadow')
      delay_shadow = setTimeout(remove_shadow, 300)
    return

  $(window).scroll ->
    scroll_length = $(document).scrollTop()
    if $(document).scrollTop() > 20
      $nav.addClass 'nav-shadow'
    else
      remove_shadow() unless $nav.hasClass 'menu-down'
    return

  # SEARCH BAR FUNCTIONS
  #======================================

  $input = $('.searchInput')
  $box = $('.searchBox');

  $box.on 'click', ->
    $box.hide()
    $input.show().animate width: '270px'
    return

  $(document).mouseup (e) ->
    width = $input.css('width')
    if !$input.is(e.target) and $input.has(e.target).length == 0 and width == '270px'
      $input.animate width: '0px'
      $input.delay(5).hide 0
      $box.delay(500).show 0
    return

  toggle_closeIcon = ($parent, $icon)->
    $parent.on 'keyup', (e)->
      $search_length = $(e.target).val().length
      if $search_length > 0
        $icon.show()
      else
        $icon.hide()
      return
    return

  $closeMobile = $('#closeIcon-mobile')
  toggle_closeIcon($('.searchMobile'), $closeMobile)

  $close = $('#closeIcon')
  toggle_closeIcon($('.searchInput'), $close)

  reset_search_value = ($icon, $value)->
    $icon.bind 'click', ->
      $value.val("")
      $icon.hide()
      return
    return

  reset_search_value($closeMobile, $('.search-input-mobile'))
  reset_search_value($close, $('.search-input-large'))
  return

$(document).ready navbar_main
