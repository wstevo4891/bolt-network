require 'rails_helper'

RSpec.describe "subgenres/index", type: :view do
  before(:each) do
    assign(:subgenres, [
      Subgenre.create!(),
      Subgenre.create!()
    ])
  end

  it "renders a list of subgenres" do
    render
  end
end
