require 'spec_helper'

describe "composition_dates/new.html.erb" do
  before(:each) do
    assign(:composition_date, stub_model(CompositionDate).as_new_record)
  end

  it "renders new composition_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => composition_dates_path, :method => "post" do
    end
  end
end
