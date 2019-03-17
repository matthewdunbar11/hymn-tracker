require 'rails_helper'

RSpec.describe "service_song_types/new", type: :view do
  before(:each) do
    assign(:service_song_type, ServiceSongType.new(
      :name => "MyString"
    ))
  end

  it "renders new service_song_type form" do
    render

    assert_select "form[action=?][method=?]", service_song_types_path, "post" do

      assert_select "input[name=?]", "service_song_type[name]"
    end
  end
end
