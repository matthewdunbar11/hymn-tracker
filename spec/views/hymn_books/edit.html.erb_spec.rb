require 'rails_helper'

RSpec.describe "hymn_books/edit", type: :view do
  before(:each) do
    @hymn_book = assign(:hymn_book, HymnBook.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit hymn_book form" do
    render

    assert_select "form[action=?][method=?]", hymn_book_path(@hymn_book), "post" do

      assert_select "input[name=?]", "hymn_book[name]"
    end
  end
end
