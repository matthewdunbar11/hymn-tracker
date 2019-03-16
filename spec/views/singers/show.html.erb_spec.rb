require 'rails_helper'

RSpec.describe "singers/show", type: :view do
  before(:each) do
    @singer = assign(:singer, Singer.create!(
      :first_name => "First Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
  end
end
