require 'rails_helper'

RSpec.describe "movies/edit", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!( attributes_for(:movie)))
  end

  it "renders the edit movie form" do
    render

    assert_select "form[action=edit][method=put]", movie_path(@movie), "post" do
    end
  end
end
