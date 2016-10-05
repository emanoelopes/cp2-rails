require "rails_helper"

RSpec.describe FranquiasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/franquias").to route_to("franquias#index")
    end

    it "routes to #new" do
      expect(:get => "/franquias/new").to route_to("franquias#new")
    end

    it "routes to #show" do
      expect(:get => "/franquias/1").to route_to("franquias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/franquias/1/edit").to route_to("franquias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/franquias").to route_to("franquias#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/franquias/1").to route_to("franquias#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/franquias/1").to route_to("franquias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/franquias/1").to route_to("franquias#destroy", :id => "1")
    end

  end
end
