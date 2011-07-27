require 'spec_helper'

describe "venues/new.html.erb" do
  before(:each) do
    assign(:venue, stub_model(Venue,
      :name => "MyString",
      :address_id => 1
    ).as_new_record)
  end

  it "renders new venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => venues_path, :method => "post" do
      assert_select "input#venue_name", :name => "venue[name]"
      assert_select "input#venue_address_id", :name => "venue[address_id]"
    end
  end
end
