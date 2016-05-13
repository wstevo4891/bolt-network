// Home Page Slideshow functions

var slider_main = function() {
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
      $('#movie-logo').attr('src', 'avengers-logo.png');
      $('#year').text("2012");
      $('#rating').text("PG-13");
      $('#movie-length').text("2h 23min");
      $('#blurb').text("They're the most powerful people on Earth, but cooperation is a touchy subject.");

    } else if ($current == 1) {
      $('#movie-logo').attr('src', 'skyfall-logo.png');
      $('#year').text("2012");
      $('#rating').text("PG-13");
      $('#movie-length').text("2h 23min");
      $('#blurb').text("Terror hits London as 007 races to defend M from a tech-savvy former agent out for revenge.")

    } else if ($current == 2) {
      $('#movie-logo').attr('src', 'pirates-logo.png');
      $('#year').text("2003");
      $('#rating').text("PG-13");
      $('#movie-length').text("2h 23min");
      $('#blurb').text("A sword-handy blacksmith teams up with a clever yet eccentric outlaw to rescue his love from a crew of undead pirates.")
    }
  }

  $('.glyphicon-menu-right').on('click', function() {
  	$('.slider-frame').vegas('next');
  	var change_delay = setTimeout(change_info, 300);
  });

  $('.glyphicon-menu-left').on('click', function() {
    $('.slider-frame').vegas('previous');
    var change_delay = setTimeout(change_info, 300);
  });

  function slider_resize() {
	  var width = $(window).width() - 200;
	  $(".slider-frame").height(width);

	  var slider_height = $(".slider-frame").height();
    $(".slider-arrow").css('margin-top', slider_height * 0.45);

    var total_width = $(window).width();
    $("#slide-info").css('font-size', total_width * 0.014);
    $("#slide-buttons a").css('font-size', total_width * 0.012);
  }

  $(window).on("load", slider_resize);
  $(window).on("load", change_info);

  $(window).on("resize", slider_resize);
};

$(document).ready(slider_main);

