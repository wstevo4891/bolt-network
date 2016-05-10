require "rails_helper"

RSpec.describe 'Navbar responsive layout', js: true do
  
  subject { page }

  describe "Up to mobile view" do

  	before do
  		resize_window_to_mobile
  	end

  	after do
  		resize_window_to_default
  	end

  	it "collapses the navbar for mobile views" do
  		it { is_expected.to have_selector('.navbar-collapse'), visible: false }
  	end
  end
end














