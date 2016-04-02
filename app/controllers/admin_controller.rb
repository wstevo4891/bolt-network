class AdminController < ApplicationController
  before_action :set_data

  def movies_index
  end

  def genres_index
    @genre = Genre.new
  end

  private
    def set_data
      @movies = Movie.all
      @genres = Genre.all
    end
end
