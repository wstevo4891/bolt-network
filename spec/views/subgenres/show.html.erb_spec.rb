require 'rails_helper'

RSpec.describe "subgenres/show", type: :view do
  before(:each) do
    @subgenre = assign(:subgenre, Subgenre.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
