class PagesController < ApplicationController
  require 'rmagick'

  def debug
    access_data
    @genres.each {|genre| genre.build_movies_hash}
    # @genre = @genres[0]
    # @movie = @movies[0]
    #
    # @movie_ids = @genre.movie_ids
    # @movies_array = []
    # @movies_hash = {}
    # @movies.each do |movie|
    #   if @movie_ids.include? movie.id
    #     @movies_array.push(movie.attributes)
    #     @movies_hash[movie.id] = movie.attributes
    #   end
    # end
  end

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
