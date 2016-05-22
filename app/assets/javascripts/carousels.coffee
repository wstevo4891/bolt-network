
# HOME PAGE CAROUSEL HOVER EFFECTS
#==============================================

carousels_main =->

  genres_container_exists = document.getElementById('genre-posters-container')

  if genres_container_exists != null
    posters_count = document.getElementsByClassName('poster');
    i = 0
    j = 1
    while i < posters_count.length
      if $(posters_count[i]).hasClass "poster-#{j}"
        $(".poster-#{j}").addClass 'first-poster'
        j += 5
      i++

  $('.poster').hover ->
    if !$(this).hasClass 'first-poster'
      $(this).parent().addClass 'slide-list'
    else
      $(this).parent().removeClass 'slide-list'
    return
  return

$(document).ready carousels_main
