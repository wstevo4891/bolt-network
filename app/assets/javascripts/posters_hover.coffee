
# HOME PAGE CAROUSEL HOVER EFFECTS
#==============================================

posters_hover =->
  
  carousels_container_exists = document.getElementById('carousels-container')
  genres_container_exists = document.getElementById('genres-container')

  $('.poster').hover (->
    parent_li =  $(this).parent()
    setTimeout (->
      parent_li.addClass('auto-width')
    ), 500

    if carousels_container_exists
      if $(this).hasClass 'first-poster'
        $(this).closest('ul').removeClass 'last-slide-translate'
        $(this).closest('ul').removeClass 'slide-list'

      else if $(this).hasClass 'last-poster'
        $(this).closest('ul').removeClass 'slide-list'
        $(this).closest('ul').addClass 'last-slide-translate'

      else
        $(this).closest('ul').removeClass 'last-slide-translate'
        $(this).closest('ul').addClass 'slide-list'
      
    else if genres_container_exists
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

$(document).ready posters_hover

