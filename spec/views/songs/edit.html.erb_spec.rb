require 'rails_helper'

RSpec.describe "songs/edit", type: :view do
  before(:each) do
    @song = assign(:song, Song.create!(
      :name => "MyString",
      :page_number => 1,
      :hymn_book => nil
    ))
  end

  it "renders the edit song form" do
    render

    assert_select "form[action=?][method=?]", song_path(@song), "post" do

      assert_select "input[name=?]", "song[name]"

      assert_select "input[name=?]", "song[page_number]"

      assert_select "input[name=?]", "song[hymn_book_id]"
    end
  end
end
