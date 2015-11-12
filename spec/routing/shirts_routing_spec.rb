require "rails_helper"

RSpec.describe ShirtsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/shirts").to route_to("shirts#index")
    end

    it "routes to #new" do
      expect(:get => "/shirts/new").to route_to("shirts#new")
    end

    it "routes to #show" do
      expect(:get => "/shirts/1").to route_to("shirts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/shirts/1/edit").to route_to("shirts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/shirts").to route_to("shirts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/shirts/1").to route_to("shirts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/shirts/1").to route_to("shirts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/shirts/1").to route_to("shirts#destroy", :id => "1")
    end

  end
end
