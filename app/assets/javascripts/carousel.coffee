
# HOME PAGE CAROUSEL HOVER EFFECTS
#==============================================

carousels_main =->

  $('.poster').hover ->
    if !$(this).hasClass('first-poster')
      $(this).closest('ul').addClass 'slide-list'
    else
      $(this).closest('ul').removeClass 'slide-list'
    return
  return

$(document).ready carousels_main
