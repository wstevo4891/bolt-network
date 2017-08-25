require 'yaml'

class DeveloperToolsController < ApplicationController

  def debug
    access_data
    # @genres.each {|genre| genre.build_movies_hash}

    # access_genres
    # file = Rails.root.join('db', 'yaml_data', 'movies.yml')
    # @movies = YAML::load_file(file)

    # dir = Rails.root.join('app', 'views').to_s
    # @subdirs = Dir.glob("#{dir}/**/*").select {|f| File.directory? f}
    # @subdirs.each {|f| f.slice!("/pharis-tools/app/views/") }

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

  # Load @page from yaml file
  def sandbox
    file = Rails.root.join('db', 'yaml_data', 'pages.yml')
    @page = YAML::load_file(file)
  end

  private

  def access_genres
    @genres = Genre.all
  end

  def access_data
    @genres = Genre.all
    @movies = Movie.all
  end
end
