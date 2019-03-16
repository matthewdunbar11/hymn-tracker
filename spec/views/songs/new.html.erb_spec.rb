require 'rails_helper'

RSpec.describe "songs/new", type: :view do
  before(:each) do
    assign(:song, Song.new(
      :name => "MyString",
      :page_number => 1,
      :hymn_book => nil
    ))
  end

  it "renders new song form" do
    render

    assert_select "form[action=?][method=?]", songs_path, "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "input[name=?]", "song[page_number]"

      assert_select "input[name=?]", "song[hymn_book_id]"
    end
  end
end
