require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before do
    @movies = assign(:movie, Movie.create!( attributes_for(:movie)))
    params[:search] = "Star Trek"
  end

  it "displays the searched movie" do
  	render
  	expect(rendered).to match /Star Trek/
  end
end
