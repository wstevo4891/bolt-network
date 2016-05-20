require 'rails_helper'

RSpec.describe "subgenres/new", type: :view do
  before(:each) do
    assign(:subgenre, Subgenre.new())
  end

  it "renders new subgenre form" do
    render

    assert_select "form[action=?][method=?]", subgenres_path, "post" do
    end
  end
end
