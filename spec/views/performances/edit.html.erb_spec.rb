require 'spec_helper'

describe "performances/edit.html.erb" do
  before(:each) do
    @performance = assign(:performance, stub_model(Performance,
      :user_id => 1,
      :venue_id => 1
    ))
  end

  it "renders the edit performance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => performances_path(@performance), :method => "post" do
      assert_select "input#performance_user_id", :name => "performance[user_id]"
      assert_select "input#performance_venue_id", :name => "performance[venue_id]"
    end
  end
end
