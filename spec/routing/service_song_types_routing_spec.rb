require "rails_helper"

RSpec.describe ServiceSongTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/service_song_types").to route_to("service_song_types#index")
    end

    it "routes to #new" do
      expect(:get => "/service_song_types/new").to route_to("service_song_types#new")
    end

    it "routes to #show" do
      expect(:get => "/service_song_types/1").to route_to("service_song_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_song_types/1/edit").to route_to("service_song_types#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/service_song_types").to route_to("service_song_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_song_types/1").to route_to("service_song_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_song_types/1").to route_to("service_song_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_song_types/1").to route_to("service_song_types#destroy", :id => "1")
    end
  end
end
