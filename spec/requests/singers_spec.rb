require 'rails_helper'

RSpec.describe "Singers", type: :request do
  describe "GET /singers" do
    it "works! (now write some real specs)" do
      get singers_path
      expect(response).to have_http_status(200)
    end
  end
end
