require "rails_helper"

RSpec.feature "Genres Index" do
	scenario "create new genre" do

    visit genres_path

    fill_in("Name", with: "Mystery")
    click_on "Add"

    expect(page).to have_content "Mystery"
	end
	
end