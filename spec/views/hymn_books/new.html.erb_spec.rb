require 'rails_helper'

RSpec.describe "hymn_books/new", type: :view do
  before(:each) do
    assign(:hymn_book, HymnBook.new(
      :name => "MyString"
    ))
  end

  it "renders new hymn_book form" do
    render

    assert_select "form[action=?][method=?]", hymn_books_path, "post" do

      assert_select "input[name=?]", "hymn_book[name]"
    end
  end
end
