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

  $('.glyphicon-menu-right').on('click', function() {
  	$('.slider-frame').vegas('next');
  });

  $('.glyphicon-menu-left').on('click', function() {
    $('.slider-frame').vegas('previous');
  });



  var bg = $('.slider-frame:first-child').find('.vegas-inner-slide').css('background-image');

  var inner_slide = $('.slider-frame:nth-child(2)').find('.vegas-inner-slide');

  $('.vegas').on('next', function() {
	  if (inner_slide.css('background-image', 'avengers-slide.jpg')) {

	  	$('#slide-info h1').text("Avengers");

	  } else if (inner_slide.css('background-image', 'skyfall-slide.jpg')) {

	  	$('#slide-info h1').text("Fall");

	  } else if (inner_slide.css('background-image', 'pirates-slide.jpg')) {

	  	$('#slide-info h1').text("Pirates");
	  }
  });

});

function slider_resize() {
	var width = $(window).width() - 200;
	$(".slider-frame").height(width);

	var slider_height = $(".slider-frame").height();
  $(".slider-arrow").css('margin-top', slider_height * 0.45);
}

$(window).on("load", slider_resize);

$(window).on("resize", slider_resize);
