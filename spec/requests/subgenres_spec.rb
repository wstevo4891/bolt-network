require 'rails_helper'

RSpec.describe "Subgenres", type: :request do
  describe "GET /subgenres" do
    it "works! (now write some real specs)" do
      get subgenres_path
      expect(response).to have_http_status(200)
    end
  end
end
