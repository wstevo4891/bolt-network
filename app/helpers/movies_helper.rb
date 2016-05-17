module MoviesHelper

  def carousel_data(movies, genre, array1, array2)
    movies.each do |movie|
      if movie.genre_ids.include?(genre.id)
        array1.push(movie.photo)
        array2.push(movie.id)
      end
    end
  end

  def carousel(array1, array2)
    i = 0
    while array1[i]
      count = 0
      raw("<li id='auto-width'>")
	      while count < 6
	        movie = Movie.find_by(id: array2[i])
	        if i < array1.length - 1
	        	raw("<div class='poster'>")
	        	  link_to image_tag(array1[i], class: "img-responsive"), movie_path(movie)
	        	raw("</div>")
	          i += 1
	          count += 1
	        elsif i == array1.length - 1
	          raw("<div class='poster'>")
	            link_to image_tag(array1[i], class: "img-responsive"), movie_path(movie)
	          raw("</div>")
	          i += 1
	          break
	        end
	      end
      raw("</li>")
    end
  end

end
