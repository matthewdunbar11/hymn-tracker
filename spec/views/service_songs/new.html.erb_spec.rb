require 'rails_helper'

RSpec.describe "service_songs/new", type: :view do
  before(:each) do
    assign(:service_song, ServiceSong.new(
      :service => nil,
      :song => nil
    ))
  end

  it "renders new service_song form" do
    render

    assert_select "form[action=?][method=?]", service_songs_path, "post" do

      assert_select "input[name=?]", "service_song[service_id]"

      assert_select "input[name=?]", "service_song[song_id]"
    end
  end
end
