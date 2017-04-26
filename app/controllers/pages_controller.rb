class PagesController < ApplicationController
  require 'rmagick'

  def debug
    access_data
    @genre = @genres[0]
    @movie = @movies[0]

    @movie_ids = @genre.movie_ids
    @movies_array = []
    @movies_hash = {}
    @movies.each do |movie|
      if @movie_ids.include? movie.id
        @movies_array.push(movie.attributes)
        @movies_hash[movie.id] = movie.attributes
      end
    end
  end

  def about
    access_data
  end

  def home
    access_data
    # @batch = 4
  end

  def slide_batch
    @batch = params[:batch]
    @genres = Genre.all
    render partial: 'pages/carousels'
  end

  private

  def access_data
    @genres = Genre.all
    @movies = Movie.all
  end
end
