require 'spec_helper'

describe "instruments/show.html.erb" do
  before(:each) do
    @instrument = assign(:instrument, stub_model(Instrument,
      :model => "Model",
      :manufacturer_id => 1,
      :instrument_type_id => 1,
      :color => "Color",
      :serial => "Serial",
      :owner => "Owner",
      :prev_owner => "Prev Owner",
      :description => "MyText",
      :finish => "Finish"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Color/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Serial/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Prev Owner/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Finish/)
  end
end
