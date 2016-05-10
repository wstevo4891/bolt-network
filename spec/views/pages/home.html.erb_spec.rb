require "rails_helper"

RSpec.describe "pages/home", type: :view do
  before do
    assign(:movies, [
      Movie.create!(
      	title: "The Avengers",
      	photo: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/public/the-avengers-slide.jpg'))),
      	summary: "Earth's mightiest heroes...",
      	rating: 92
      ),
      Movie.create!(
        title: "Skyfall",
        photo: Rack::Test::UploadedFile.new(File.open(File.join(Rails.root, '/public/skyfall-slide.jpg'))),
        summary: "Bond's loyalty to M is tested...",
        rating: 93
      )
    ])
  end
  
  it "displays the jumbotron" do
    render
    expect(rendered).to have_content "Watch your favorite movies, instantly."
  end	
end
