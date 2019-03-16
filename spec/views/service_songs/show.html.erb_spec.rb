require 'rails_helper'

RSpec.describe "service_songs/show", type: :view do
  before(:each) do
    @service_song = assign(:service_song, ServiceSong.create!(
      :service => nil,
      :song => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
