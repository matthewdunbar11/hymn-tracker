require 'rails_helper'

RSpec.describe "singers/edit", type: :view do
  before(:each) do
    @singer = assign(:singer, Singer.create!(
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit singer form" do
    render

    assert_select "form[action=?][method=?]", singer_path(@singer), "post" do

      assert_select "input[name=?]", "singer[first_name]"

      assert_select "input[name=?]", "singer[last_name]"
    end
  end
end
