$(document).ready(function($) {
  $('.slider-frame').vegas({
  	delay: 8000,
    slides: [
      { src: "avengers-slide.jpg" },
      { src: "skyfall-slide.jpg" },
      { src: "pirates-slide.jpg" }
    ]
  });
});

function slider_resize() {
	var width = $(window).width() - 200;
	$(".slider-frame").height(width);
}

$(window).on("load", slider_resize);

$(window).on("resize", slider_resize);
