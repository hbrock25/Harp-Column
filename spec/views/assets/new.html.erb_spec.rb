require 'spec_helper'

describe "assets/new.html.erb" do
  before(:each) do
    assign(:asset, stub_model(Asset,
      :name => "MyString",
      :asset_type => "MyString",
      :asset_path => "MyString"
    ).as_new_record)
  end

  it "renders new asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assets_path, :method => "post" do
      assert_select "input#asset_name", :name => "asset[name]"
      assert_select "input#asset_asset_type", :name => "asset[asset_type]"
      assert_select "input#asset_asset_path", :name => "asset[asset_path]"
    end
  end
end
