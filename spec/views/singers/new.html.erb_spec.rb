require 'rails_helper'

RSpec.describe "singers/new", type: :view do
  before(:each) do
    assign(:singer, Singer.new(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new singer form" do
    render

    assert_select "form[action=?][method=?]", singers_path, "post" do

      assert_select "input[name=?]", "singer[first_name]"

      assert_select "input[name=?]", "singer[last_name]"
    end
  end
end
