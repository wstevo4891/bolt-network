class PagesController < ApplicationController
  require 'rmagick'

  def access_data
  	@genres = Genre.all
  	@movies = Movie.all
  end
  
  def home
  	access_data
  end

  def about
  	access_data
  end

  def genre
    access_data
  end

  def search
    access_data
  end
end
