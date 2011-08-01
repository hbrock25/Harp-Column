require 'spec_helper'

describe "difficulties/show.html.erb" do
  before(:each) do
    @difficulty = assign(:difficulty, stub_model(Difficulty,
      :label => "Label"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Label/)
  end
end
