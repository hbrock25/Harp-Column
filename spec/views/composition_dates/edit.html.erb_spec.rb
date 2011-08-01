require 'spec_helper'

describe "composition_dates/edit.html.erb" do
  before(:each) do
    @composition_date = assign(:composition_date, stub_model(CompositionDate))
  end

  it "renders the edit composition_date form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => composition_dates_path(@composition_date), :method => "post" do
    end
  end
end
