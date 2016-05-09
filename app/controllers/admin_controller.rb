class AdminController < ApplicationController

  def movies_index
  	@movies = Movie.all
  	@genres = Genre.all
  end
end
