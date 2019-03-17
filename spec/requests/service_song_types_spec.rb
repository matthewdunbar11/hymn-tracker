require 'rails_helper'

RSpec.describe "ServiceSongTypes", type: :request do
  describe "GET /service_song_types" do
    it "works! (now write some real specs)" do
      get service_song_types_path
      expect(response).to have_http_status(200)
    end
  end
end
