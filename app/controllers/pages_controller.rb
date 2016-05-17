class PagesController < ApplicationController
  require 'rmagick'

  def access_data
  	@genres = Genre.all
  	@movies = Movie.all
  end

  def about
    access_data
  end

  def home
    access_data
  end
end
