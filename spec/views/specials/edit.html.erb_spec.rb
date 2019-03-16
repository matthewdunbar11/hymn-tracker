require 'rails_helper'

RSpec.describe "specials/edit", type: :view do
  before(:each) do
    @special = assign(:special, Special.create!(
      :service => nil,
      :singer => nil
    ))
  end

  it "renders the edit special form" do
    render

    assert_select "form[action=?][method=?]", special_path(@special), "post" do

      assert_select "input[name=?]", "special[service_id]"

      assert_select "input[name=?]", "special[singer_id]"
    end
  end
end
