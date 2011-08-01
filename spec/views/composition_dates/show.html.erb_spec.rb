require 'spec_helper'

describe "composition_dates/show.html.erb" do
  before(:each) do
    @composition_date = assign(:composition_date, stub_model(CompositionDate))
  end

  it "renders attributes in <p>" do
    render
  end
end
