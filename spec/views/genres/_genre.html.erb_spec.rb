require "rails_helper"

RSpec.describe "rendering locals in genre partial" do
  it "displays the genre" do
  	genre = Genre.create!(name: "Mystery")

  	render partial: "genres/genre.html.erb", locals: {genre: genre}

  	expect(rendered).to match /Mystery/
  end
end
