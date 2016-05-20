require 'rails_helper'

RSpec.describe "subgenres/edit", type: :view do
  before(:each) do
    @subgenre = assign(:subgenre, Subgenre.create!())
  end

  it "renders the edit subgenre form" do
    render

    assert_select "form[action=?][method=?]", subgenre_path(@subgenre), "post" do
    end
  end
end
