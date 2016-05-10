require "rails_helper"

RSpec.describe 'layouts/_footer' do

	it "renders the footer links" do
    render
    expect(rendered).to match /Bolt/
    expect(rendered).to match /More Bolt/
    expect(rendered).to match /News/
  end
end
