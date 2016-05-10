require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!( attributes_for(:movie)))
  end

  it "renders attributes in <h2>" do
    render
    expect(rendered).to have_content "Star Trek"
  end

  it "renders attributes in <p>" do
  	render
  	expect(rendered).to match /James Kirk/
  end

  it "renders attributes in <h4>" do
  	render
  	expect(rendered).to match /95/
  end

  it "renders the movie photo" do
  	render
  	expect(rendered).to have_xpath "//img[contains(@src,'star-trek.jpg')]"
  end
end










