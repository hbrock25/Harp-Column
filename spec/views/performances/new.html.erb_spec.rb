require 'spec_helper'

describe "performances/new.html.erb" do
  before(:each) do
    assign(:performance, stub_model(Performance,
      :user_id => 1,
      :venue_id => 1
    ).as_new_record)
  end

  it "renders new performance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => performances_path, :method => "post" do
      assert_select "input#performance_user_id", :name => "performance[user_id]"
      assert_select "input#performance_venue_id", :name => "performance[venue_id]"
    end
  end
end
