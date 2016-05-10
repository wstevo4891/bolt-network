require 'rails_helper'

RSpec.describe "admin/movies_index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
      	title: "Star Trek",
      	photo: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/spec/images/star-trek.jpg'))),
      	summary: "James Kirk and the crew of the enterprise embark on the first mission out of Starfleet Academy.",
      	rating: 95
      ),
      Movie.create!(
        title: "The Avengers",
        photo: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/app/assets/images/the-avengers.jpg'))),
        summary: "Earth's mightiest heroes...",
        rating: 92
      )
    ])
    render
  end

  it "renders a list of movies" do
    expect(rendered).to match /Star Trek/
    expect(rendered).to match /The Avengers/
  end
end
