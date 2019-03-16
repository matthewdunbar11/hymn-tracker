require 'rails_helper'

RSpec.describe "hymn_books/show", type: :view do
  before(:each) do
    @hymn_book = assign(:hymn_book, HymnBook.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
