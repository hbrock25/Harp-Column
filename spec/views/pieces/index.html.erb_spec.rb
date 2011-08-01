require 'spec_helper'

describe "pieces/index.html.erb" do
  before(:each) do
    assign(:pieces, [
      stub_model(Piece,
        :composer_id => 1,
        :description => "Description",
        :comments => "MyText",
        :difficulty_id => 1,
        :difficulty_rating => 1,
        :submitted_user_id => 1
      ),
      stub_model(Piece,
        :composer_id => 1,
        :description => "Description",
        :comments => "MyText",
        :difficulty_id => 1,
        :difficulty_rating => 1,
        :submitted_user_id => 1
      )
    ])
  end

  it "renders a list of pieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
