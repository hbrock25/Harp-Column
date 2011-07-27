require 'spec_helper'

describe "instrument_types/show.html.erb" do
  before(:each) do
    @instrument_type = assign(:instrument_type, stub_model(InstrumentType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
