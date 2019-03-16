require "rails_helper"

RSpec.describe ServiceSongsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/service_songs").to route_to("service_songs#index")
    end

    it "routes to #new" do
      expect(:get => "/service_songs/new").to route_to("service_songs#new")
    end

    it "routes to #show" do
      expect(:get => "/service_songs/1").to route_to("service_songs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_songs/1/edit").to route_to("service_songs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/service_songs").to route_to("service_songs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_songs/1").to route_to("service_songs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_songs/1").to route_to("service_songs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_songs/1").to route_to("service_songs#destroy", :id => "1")
    end
  end
end
