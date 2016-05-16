class AdminController < ApplicationController

  def movies_index
  	@movies = Movie.order(:id)
  	@genres = Genre.all
  end
end
