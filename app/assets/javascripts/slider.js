// Home Page Slideshow functions

$(document).ready(function($) {
  $('.slider-frame').vegas({
  	transitionDuration: 400,
    slides: [
      { src: "avengers-slide.jpg", id: "avenge" },
      { src: "skyfall-slide.jpg", id: "sky" },
      { src: "pirates-slide.jpg", id: "pirate" }
    ]
  });

  $('.slider-frame').vegas('pause');

  function change_info() {
    var $current = $(".slider-frame").vegas("current");

    if ($current == 0) {

      $('#slide-info h1').text("Avengers");

    } else if ($current == 1) {

      $('#slide-info h1').text("Fall");

    } else if ($current == 2) {

      $('#slide-info h1').text("Pirates");
    }
  }

  $('.glyphicon-menu-right').on('click', function() {
  	$('.slider-frame').vegas('next');
  	change_info();
  });

  $('.glyphicon-menu-left').on('click', function() {
    $('.slider-frame').vegas('previous');
    change_info();
  });

  function slider_resize() {
	  var width = $(window).width() - 200;
	  $(".slider-frame").height(width);

	  var slider_height = $(".slider-frame").height();
    $(".slider-arrow").css('margin-top', slider_height * 0.45);
  }

  $(window).on("load", slider_resize);
  $(window).on("load", change_info);

  $(window).on("resize", slider_resize);
});
