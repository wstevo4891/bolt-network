require "rails_helper"

RSpec.describe 'Navbar responsive layout' do
  before do
    visit "/"
  end
  
  subject { page }

  describe "Down to mobile view" do

  	before do
  		resize_window_to_mobile
  	end

  	after do
  		resize_window_default
  	end

  	it "collapses the navbar for mobile views" do
  		expect(page).to have_selector('.navbar-collapse', visible: false)
  	end
  end

  describe "Up to default view" do

    before do
      resize_window_default
    end

    it "expands the navbar for default views" do
      expect(page).to have_selector(".navbar-collapse", visible: true)
    end
  end
end










