require 'rails_helper'

RSpec.describe "ServiceSongs", type: :request do
  describe "GET /service_songs" do
    it "works! (now write some real specs)" do
      get service_songs_path
      expect(response).to have_http_status(200)
    end
  end
end
