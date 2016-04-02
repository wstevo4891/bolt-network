# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $('.dropdown').on 'show.bs.dropdown', (e) ->
  	$(this).find('.dropdown-menu').first().stop(true, true).slideDown 300
  	return
  $('.dropdown').on 'hide.bs.dropdown', (e) ->
  	$(this).find('.dropdown-menu').first().stop(true, true).slideUp 300
  	return











