# Home Page Slideshow functions

slider_main = ->

  change_info = ->
    $current = $('.slider-frame').vegas('current')
    if $current == 0
      $('#movie-logo').attr 'src', 'pirates-logo.png'
      $('#year').text '2003'
      $('#rating').text 'PG-13'
      $('#movie-length').text '2h 23min'
      $('#blurb').text 'A sword-handy blacksmith teams up with a clever yet eccentric outlaw to rescue his love from a crew of undead pirates.'
      $('#play').attr 'href', '/movies/9'
    else if $current == 1
      $('#movie-logo').attr 'src', 'skyfall-logo.png'
      $('#year').text '2012'
      $('#rating').text 'PG-13'
      $('#movie-length').text '2h 23min'
      $('#blurb').text 'Terror hits London as 007 races to defend M from a tech-savvy former agent out for revenge.'
      $('#play').attr 'href', '/movies/7'
    else if $current == 2
      $('#movie-logo').attr 'src', 'avengers-logo.png'
      $('#year').text '2012'
      $('#rating').text 'PG-13'
      $('#movie-length').text '2h 23min'
      $('#blurb').text 'They\'re the most powerful people on Earth, but cooperation is a touchy subject.'
      $('#play').attr 'href', '/movies/1'
    return

  slider_resize = ->
    width = $(window).width() - 200
    $('.slider-frame').height width
    slider_height = $('.slider-frame').height()
    $('.slider-arrow').css 'margin-top', slider_height * 0.45
    total_width = $(window).width()
    $('#slide-info').css 'font-size', total_width * 0.014
    $('#slide-buttons a').css 'font-size', total_width * 0.012
    return

  $('.slider-frame').vegas
    transitionDuration: 300
    slides: [
      {
        src: 'pirates-slide.jpg'
      }
      {
        src: 'skyfall-slide.jpg'
      }
      {
        src: 'avengers-slide.jpg'
      }
    ]
  $('.slider-frame').vegas 'pause'
  $('.glyphicon-menu-right').on 'click', ->
    $('.slider-frame').vegas 'next'
    change_delay = setTimeout(change_info, 300)
    return
  $('.glyphicon-menu-left').on 'click', ->
    $('.slider-frame').vegas 'previous'
    change_delay = setTimeout(change_info, 300)
    return
  $(window).ready slider_resize
  $(window).resize slider_resize

  $('.slider-Action').unslider()
  $('.slider-Animation').unslider()
  $('.slider-Comedy').unslider()
  $('.slider-Drama').unslider()
  $('.slider-Family').unslider()
  $('.slider-Fantasy').unslider()
  $('.slider-Romance').unslider()
  $('.slider-Horror').unslider()
  $('.slider-Sci-Fi').unslider()
  return

$(document).ready slider_main
