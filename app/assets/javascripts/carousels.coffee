
# HOME PAGE CAROUSEL HOVER EFFECTS
#==============================================

carousels_main =->

  posters_count = document.getElementsByClassName('poster');
  i = 0
  j = 1
  h = 5
  while i < posters_count.length
    if $(posters_count[i]).hasClass "poster-#{j}"
      $(".poster-#{j}").addClass 'first-poster'
      j += 5
      
    else if $(posters_count[i]).hasClass "poster-#{h}"
      $(".poster-#{h}").addClass "last-poster"
      h += 5
    i++
  
  carousels_container_exists = document.getElementById('carousels-container')
  genres_container_exists = document.getElementById('genres-container')

  $('.poster').hover ->
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
      return
      
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
      return
    return
  return

$(document).ready carousels_main
