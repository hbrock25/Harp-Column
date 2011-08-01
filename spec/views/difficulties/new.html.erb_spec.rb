require 'spec_helper'

describe "difficulties/new.html.erb" do
  before(:each) do
    assign(:difficulty, stub_model(Difficulty,
      :label => "MyString"
    ).as_new_record)
  end

  it "renders new difficulty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => difficulties_path, :method => "post" do
      assert_select "input#difficulty_label", :name => "difficulty[label]"
    end
  end
end
