
# NAVBAR EFFECTS & ANIMATIONS
#================================================

navbar_main = ->

  # NAVBAR BACKGROUND FUNCTIONS
  #=============================

  #   Let's use a variable to keep track of the scroll-length.
  scroll_length = 0
  $nav = $('nav')

  #   We'll use this function to remove the navbar's shadowed background
  remove_shadow = ->
    $nav.removeClass 'nav-shadow'
    return

  #   We'll set several things to happen when you click the mobile menu button.
  #   First, it adds the class 'menu-down' to the nav, which helps later.

  $('button.navbar-toggle').on 'click', ->
    $nav.toggleClass 'menu-down'

    #   If the page scroll length is less than 20px, we'll add the class nav-shadow
    #   to give the navbar a low-opacity black background.  

    if scroll_length < 20 and !$nav.hasClass('nav-shadow')
      $nav.addClass 'nav-shadow'

    #   If we're under 20 scroll-length and the nav has the nav-shadow class,
    #   meaning the menu is open, we want to delay removing nav-shadow
    #   so the menu will still be shadowed as it slides up.

    else if scroll_length < 20 and $nav.hasClass('nav-shadow')
      delay_shadow = setTimeout(remove_shadow, 300)
    return


  #   As we scroll up and down on the window, scroll_length keeps track
  #   of our distance from the top.

  $(window).scroll ->
    scroll_length = $(document).scrollTop()

    #   If we scroll down further than 20px, the navbar gets its background

    if $(document).scrollTop() > 20
      $nav.addClass 'nav-shadow'
    
    #   We'll remove the background when we get less than 20px from the top,
    #   unless the nav has the 'menu-down' class, meaning we're on a mobile view
    #   and the menu is down

    else
      remove_shadow() unless $nav.hasClass 'menu-down'
    return


  # SEARCH BAR FUNCTIONS
  #======================================

  #   We'll set variables for the div surrounding the search bar input tag, .searchInput,
  #   and the navbar link for the search bar, .searchBox

  $input = $('.searchInput')
  $box = $('.searchBox');


  #   When we click on the nav link, we'll hide it, show the
  #   input div and animate its width to 270px.
  #   This is what makes it slide out to the left.

  $box.on 'click', ->
    $box.hide()
    $input.show().animate width: '270px'
    return

  #   We want the search bar to shrink and disappear if we click outside of it,
  #   and show the nav link, $box, once it's gone

  $(document).mouseup (e) ->
    width = $input.css('width')
    if !$input.is(e.target) and $input.has(e.target).length == 0 and width == '270px'
      $input.animate width: '0px'
      $input.delay(5).hide 0
      $box.delay(500).show 0
    return
  
  #  If we type in the search bar, an X icon will appear that clears the
  #  input text and disappears on click. This function shows the icon if 
  #  there's text in the input, and hides it when the input is blank

  toggle_closeIcon = ($parent, $icon)->
    $parent.on 'keyup', (e)->
      $search_length = $(e.target).val().length
      if $search_length > 0
        $icon.show()
      else
        $icon.hide()
      return
    return

  #   We'll set this function on both the large-screen search bar
  #   and the mobile menu search bar, which are two different 
  #   elements in the navbar view.

  $closeMobile = $('#closeIcon-mobile')
  toggle_closeIcon($('.searchMobile'), $closeMobile)

  $close = $('#closeIcon')
  toggle_closeIcon($('.searchInput'), $close)


  #  This function sets the search input value to an empty string
  #  when the X icon is clicked

  reset_search_value = ($icon, $value)->
    $icon.bind 'click', ->
      $value.val("")
      $icon.hide()
      return
    return

  #  We'll call the function on both the large-screen and mobile X icons

  reset_search_value($closeMobile, $('.search-input-mobile'))
  reset_search_value($close, $('.search-input-large'))
  return

$(document).ready navbar_main
