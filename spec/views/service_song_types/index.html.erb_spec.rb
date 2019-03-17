require 'rails_helper'

RSpec.describe "service_song_types/index", type: :view do
  before(:each) do
    assign(:service_song_types, [
      ServiceSongType.create!(
        :name => "Name"
      ),
      ServiceSongType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of service_song_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
