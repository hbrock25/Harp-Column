require 'spec_helper'

describe "instrument_types/new.html.erb" do
  before(:each) do
    assign(:instrument_type, stub_model(InstrumentType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new instrument_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => instrument_types_path, :method => "post" do
      assert_select "input#instrument_type_name", :name => "instrument_type[name]"
    end
  end
end
