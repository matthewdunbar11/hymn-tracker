require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :service_type => nil
      ),
      Service.create!(
        :service_type => nil
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
