require 'spec_helper'

describe "instruments/edit.html.erb" do
  before(:each) do
    @instrument = assign(:instrument, stub_model(Instrument,
      :model => "MyString",
      :manufacturer_id => 1,
      :instrument_type_id => 1,
      :color => "MyString",
      :serial => "MyString",
      :owner => "MyString",
      :prev_owner => "MyString",
      :description => "MyText",
      :finish => "MyString"
    ))
  end

  it "renders the edit instrument form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instruments_path(@instrument), :method => "post" do
      assert_select "input#instrument_model", :name => "instrument[model]"
      assert_select "input#instrument_manufacturer_id", :name => "instrument[manufacturer_id]"
      assert_select "input#instrument_instrument_type_id", :name => "instrument[instrument_type_id]"
      assert_select "input#instrument_color", :name => "instrument[color]"
      assert_select "input#instrument_serial", :name => "instrument[serial]"
      assert_select "input#instrument_owner", :name => "instrument[owner]"
      assert_select "input#instrument_prev_owner", :name => "instrument[prev_owner]"
      assert_select "textarea#instrument_description", :name => "instrument[description]"
      assert_select "input#instrument_finish", :name => "instrument[finish]"
    end
  end
end
