require "rails_helper"

RSpec.feature "Genres Index" do
	before(:each) do
		visit genres_path
	end

	scenario "create new genre" do

    fill_in "Name", with: "Mystery"
    click_on "Add"

    expect(page).to have_content "Mystery"
	end

	scenario "update genre" do

    page.all("tr").each do |tr|
    	next unless tr.has_css?("#genre_1")
    	click_on "Edit"
      fill_in "Name", with: "RomCom"
      click_on "Save"
      expect("tr").to have_content "RomCom"
    end
  end

  scenario "delete genre" do

  	page.all("tr").each do |tr|
  		next unless tr.has_css?("#genre_1")
  		click_on "Delete"
  		click_on "Yes"
  		expect(page).to_not have_content("#genre_1")
  	end
  end
end
