class PagesController < ApplicationController
  require 'rmagick'

  def access_data
  	@genres = Genre.all
  	@movies = Movie.all
  end
  
  def home
  	access_data
    @movie = Movie.find_by id: 1
  end

  def about
  	access_data
  end
end
