require 'rails_helper'

RSpec.describe "HymnBooks", type: :request do
  describe "GET /hymn_books" do
    it "works! (now write some real specs)" do
      get hymn_books_path
      expect(response).to have_http_status(200)
    end
  end
end
