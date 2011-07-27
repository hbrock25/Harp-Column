require 'spec_helper'

describe "instrument_types/index.html.erb" do
  before(:each) do
    assign(:instrument_types, [
      stub_model(InstrumentType,
        :name => "Name"
      ),
      stub_model(InstrumentType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of instrument_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
