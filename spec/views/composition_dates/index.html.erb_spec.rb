require 'spec_helper'

describe "composition_dates/index.html.erb" do
  before(:each) do
    assign(:composition_dates, [
      stub_model(CompositionDate),
      stub_model(CompositionDate)
    ])
  end

  it "renders a list of composition_dates" do
    render
  end
end
