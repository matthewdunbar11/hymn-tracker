require 'rails_helper'

RSpec.describe "service_songs/index", type: :view do
  before(:each) do
    assign(:service_songs, [
      ServiceSong.create!(
        :service => nil,
        :song => nil
      ),
      ServiceSong.create!(
        :service => nil,
        :song => nil
      )
    ])
  end

  it "renders a list of service_songs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
