require 'spec_helper'

describe "venues/index.html.erb" do
  before(:each) do
    assign(:venues, [
      stub_model(Venue,
        :name => "Name",
        :address_id => 1
      ),
      stub_model(Venue,
        :name => "Name",
        :address_id => 1
      )
    ])
  end

  it "renders a list of venues" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
