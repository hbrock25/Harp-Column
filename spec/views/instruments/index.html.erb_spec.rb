require 'spec_helper'

describe "instruments/index.html.erb" do
  before(:each) do
    assign(:instruments, [
      stub_model(Instrument,
        :model => "Model",
        :manufacturer_id => 1,
        :instrument_type_id => 1,
        :color => "Color",
        :serial => "Serial",
        :owner => "Owner",
        :prev_owner => "Prev Owner",
        :description => "MyText",
        :finish => "Finish"
      ),
      stub_model(Instrument,
        :model => "Model",
        :manufacturer_id => 1,
        :instrument_type_id => 1,
        :color => "Color",
        :serial => "Serial",
        :owner => "Owner",
        :prev_owner => "Prev Owner",
        :description => "MyText",
        :finish => "Finish"
      )
    ])
  end

  it "renders a list of instruments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Serial".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Prev Owner".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Finish".to_s, :count => 2
  end
end
