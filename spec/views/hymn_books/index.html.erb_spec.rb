require 'rails_helper'

RSpec.describe "hymn_books/index", type: :view do
  before(:each) do
    assign(:hymn_books, [
      HymnBook.create!(
        :name => "Name"
      ),
      HymnBook.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of hymn_books" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
