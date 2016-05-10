require "rails_helper"

RSpec.describe "genres/index" do

  it "renders a list of genres" do
    assign(:genres, [
      Genre.create!(name: "Action"),
      Genre.create!(name: "Comedy")
    ])
    stub_template "genres/_form.html.erb" => "Mystery"
    render
  	expect(rendered).to match /Action/
  	expect(rendered).to match /Comedy/
  end
end
