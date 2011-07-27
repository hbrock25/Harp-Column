require 'spec_helper'

describe "assets/show.html.erb" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :name => "Name",
      :asset_type => "Asset Type",
      :asset_path => "Asset Path"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Asset Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Asset Path/)
  end
end
