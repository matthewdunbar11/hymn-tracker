require 'rails_helper'

RSpec.describe "service_song_types/edit", type: :view do
  before(:each) do
    @service_song_type = assign(:service_song_type, ServiceSongType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit service_song_type form" do
    render

    assert_select "form[action=?][method=?]", service_song_type_path(@service_song_type), "post" do

      assert_select "input[name=?]", "service_song_type[name]"
    end
  end
end
