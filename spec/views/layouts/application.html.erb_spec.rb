require "rails_helper"

RSpec.describe 'layouts/application' do
  before do
    assign(:genres, [
      Genre.create!(name: "Action"),
      Genre.create!(name: "Comedy")
    ])
  end

	it "renders the navbar" do
    render
    expect(rendered).to match /Browse/
    expect(rendered).to match /Admin/
    expect(rendered).to match /Log in/
    expect(rendered).to match /Sign up/
  end

  it "renders the footer" do
    render
    expect(rendered).to match /Bolt/
    expect(rendered).to match /More Bolt/
    expect(rendered).to match /News/
  end
end
