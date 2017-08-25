class LookupController < ApplicationController

  def lookup_genres
    genres = Genre.all
    @genres = []
    genres.each do |genre|
      @genres.push(genre.name)
    end
    return @genres
  end


end
