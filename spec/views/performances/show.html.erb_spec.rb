require 'spec_helper'

describe "performances/show.html.erb" do
  before(:each) do
    @performance = assign(:performance, stub_model(Performance,
      :user_id => 1,
      :venue_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
