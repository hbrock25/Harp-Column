require 'spec_helper'

describe "performances/index.html.erb" do
  before(:each) do
    assign(:performances, [
      stub_model(Performance,
        :user_id => 1,
        :venue_id => 1
      ),
      stub_model(Performance,
        :user_id => 1,
        :venue_id => 1
      )
    ])
  end

  it "renders a list of performances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
