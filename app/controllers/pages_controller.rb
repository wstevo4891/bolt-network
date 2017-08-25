class PagesController < ApplicationController
  require 'rmagick'

  def about
    access_data
  end

  def home
    access_data
  end

  def slide_batch
    @batch = params[:batch]
    @genres = Genre.all.order(:id)
    @genres.each {|genre| genre.build_movies_hash}
    render partial: 'pages/carousels', locals: {batch: @batch, genres: @genres}
  end

  private

  def access_data
    @genres = Genre.all
    @movies = Movie.all
  end
end
