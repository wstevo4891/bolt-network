class AdminController < ApplicationController
  before_action :set_data

  def movies_index
  end

  private
    def set_data
      @movies = Movie.all
      @genres = Genre.all
    end
end
