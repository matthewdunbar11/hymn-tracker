require 'rails_helper'

RSpec.describe "specials/index", type: :view do
  before(:each) do
    assign(:specials, [
      Special.create!(
        :service => nil,
        :singer => nil
      ),
      Special.create!(
        :service => nil,
        :singer => nil
      )
    ])
  end

  it "renders a list of specials" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
