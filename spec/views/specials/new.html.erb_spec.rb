require 'rails_helper'

RSpec.describe "specials/new", type: :view do
  before(:each) do
    assign(:special, Special.new(
      :service => nil,
      :singer => nil
    ))
  end

  it "renders new special form" do
    render

    assert_select "form[action=?][method=?]", specials_path, "post" do

      assert_select "input[name=?]", "special[service_id]"

      assert_select "input[name=?]", "special[singer_id]"
    end
  end
end
