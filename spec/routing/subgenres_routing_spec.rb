require "rails_helper"

RSpec.describe SubgenresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/subgenres").to route_to("subgenres#index")
    end

    it "routes to #new" do
      expect(:get => "/subgenres/new").to route_to("subgenres#new")
    end

    it "routes to #show" do
      expect(:get => "/subgenres/1").to route_to("subgenres#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/subgenres/1/edit").to route_to("subgenres#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/subgenres").to route_to("subgenres#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/subgenres/1").to route_to("subgenres#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/subgenres/1").to route_to("subgenres#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/subgenres/1").to route_to("subgenres#destroy", :id => "1")
    end

  end
end
