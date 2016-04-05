$(document).ready ->
  $('.dropdown').on 'show.bs.dropdown', (e) ->
  	$(this).find('.dropdown-menu').first().stop(true, true).slideDown 300
  	return
  $('.dropdown').on 'hide.bs.dropdown', (e) ->
  	$(this).find('.dropdown-menu').first().stop(true, true).slideUp 300
  	return
