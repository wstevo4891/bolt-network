require "rails_helper"

RSpec.describe 'layouts/_navbar' do
  before do
    assign(:genres, [
      Genre.create!(name: "Action"),
      Genre.create!(name: "Comedy")
    ])
  end

	it "renders the navbar links" do
    render
    expect(rendered).to match /Browse/
    expect(rendered).to match /Admin/
    expect(rendered).to match /Log in/
    expect(rendered).to match /Sign up/
  end
end
