require 'spec_helper'

describe "difficulties/index.html.erb" do
  before(:each) do
    assign(:difficulties, [
      stub_model(Difficulty,
        :label => "Label"
      ),
      stub_model(Difficulty,
        :label => "Label"
      )
    ])
  end

  it "renders a list of difficulties" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Label".to_s, :count => 2
  end
end
