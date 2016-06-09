module MoviesHelper

  def carousel_data(movies, genre, array)
    movies.each do |movie|
      if movie.genre_ids.include?(genre.id)
        array.push(movie.id)
      end
    end
  end

  def carousel(array1, array2)
    i = 0
    index = 1
    @li_begin = "<li id='auto-width'>".html_safe
    @li_end = "</li>".html_safe
    @div_begin = "<div class='poster poster-#{index}'>".html_safe
    @div_end = "</div>".html_safe 
    while array1[i]
      count = 0
      @li_begin
	      while count < 6
	        movie = Movie.find_by(id: array2[i])
	        if i < array1.length - 1
	        	@div_begin
	        	  link_to image_tag(array1[i], class: "img-responsive"), movie_path(movie)
	        	@div_end
	          i += 1
	          index += 1
	          count += 1
	        elsif i == array1.length - 1
	          @div_begin
	            link_to image_tag(array1[i], class: "img-responsive"), movie_path(movie)
	          @div_end
	          i += 1
	          break
	        end
	      end
      @li_end
    end
  end

end
