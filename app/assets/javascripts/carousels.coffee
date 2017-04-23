
# HOME PAGE CAROUSEL HOVER EFFECTS
#==============================================

carousels_main =->

  # posters_count = document.getElementsByClassName('poster');
  # posters_count = $('.poster');
  # console.log "posters_count: #{JSON.stringify(posters_count)}"
  # console.log "posters_count_length: #{posters_count.length}"

  $('li.auto-width').each ->
    $(this).children(':first').addClass 'first-poster'
    $(this).children(':last').addClass 'last-poster'
  
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
