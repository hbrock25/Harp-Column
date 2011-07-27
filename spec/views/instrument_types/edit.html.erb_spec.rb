require 'spec_helper'

describe "instrument_types/edit.html.erb" do
  before(:each) do
    @instrument_type = assign(:instrument_type, stub_model(InstrumentType,
      :name => "MyString"
    ))
  end

  it "renders the edit instrument_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instrument_types_path(@instrument_type), :method => "post" do
      assert_select "input#instrument_type_name", :name => "instrument_type[name]"
    end
  end
end
