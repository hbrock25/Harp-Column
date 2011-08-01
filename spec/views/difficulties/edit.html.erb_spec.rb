require 'spec_helper'

describe "difficulties/edit.html.erb" do
  before(:each) do
    @difficulty = assign(:difficulty, stub_model(Difficulty,
      :label => "MyString"
    ))
  end

  it "renders the edit difficulty form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => difficulties_path(@difficulty), :method => "post" do
      assert_select "input#difficulty_label", :name => "difficulty[label]"
    end
  end
end
