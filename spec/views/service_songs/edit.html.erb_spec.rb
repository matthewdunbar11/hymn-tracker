require 'rails_helper'

RSpec.describe "service_songs/edit", type: :view do
  before(:each) do
    @service_song = assign(:service_song, ServiceSong.create!(
      :service => nil,
      :song => nil
    ))
  end

  it "renders the edit service_song form" do
    render

    assert_select "form[action=?][method=?]", service_song_path(@service_song), "post" do

      assert_select "input[name=?]", "service_song[service_id]"

      assert_select "input[name=?]", "service_song[song_id]"
    end
  end
end
