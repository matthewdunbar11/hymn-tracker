require 'rails_helper'

RSpec.describe "service_song_types/show", type: :view do
  before(:each) do
    @service_song_type = assign(:service_song_type, ServiceSongType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
