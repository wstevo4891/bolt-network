require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!( attributes_for(:movie)))
  end

  it "renders the edit movie form" do
    render
    expect(rendered).to match /Star Trek/
  end
end
