require 'spec_helper'

describe "assets/index.html.erb" do
  before(:each) do
    assign(:assets, [
      stub_model(Asset,
        :name => "Name",
        :asset_type => "Asset Type",
        :asset_path => "Asset Path"
      ),
      stub_model(Asset,
        :name => "Name",
        :asset_type => "Asset Type",
        :asset_path => "Asset Path"
      )
    ])
  end

  it "renders a list of assets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Asset Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Asset Path".to_s, :count => 2
  end
end
