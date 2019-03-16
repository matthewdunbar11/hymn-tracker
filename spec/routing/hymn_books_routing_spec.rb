require "rails_helper"

RSpec.describe HymnBooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/hymn_books").to route_to("hymn_books#index")
    end

    it "routes to #new" do
      expect(:get => "/hymn_books/new").to route_to("hymn_books#new")
    end

    it "routes to #show" do
      expect(:get => "/hymn_books/1").to route_to("hymn_books#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hymn_books/1/edit").to route_to("hymn_books#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/hymn_books").to route_to("hymn_books#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hymn_books/1").to route_to("hymn_books#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hymn_books/1").to route_to("hymn_books#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hymn_books/1").to route_to("hymn_books#destroy", :id => "1")
    end
  end
end
