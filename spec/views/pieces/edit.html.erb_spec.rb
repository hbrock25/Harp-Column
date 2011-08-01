require 'spec_helper'

describe "pieces/edit.html.erb" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :composer_id => 1,
      :description => "MyString",
      :comments => "MyText",
      :difficulty_id => 1,
      :difficulty_rating => 1,
      :submitted_user_id => 1
    ))
  end

  it "renders the edit piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pieces_path(@piece), :method => "post" do
      assert_select "input#piece_composer_id", :name => "piece[composer_id]"
      assert_select "input#piece_description", :name => "piece[description]"
      assert_select "textarea#piece_comments", :name => "piece[comments]"
      assert_select "input#piece_difficulty_id", :name => "piece[difficulty_id]"
      assert_select "input#piece_difficulty_rating", :name => "piece[difficulty_rating]"
      assert_select "input#piece_submitted_user_id", :name => "piece[submitted_user_id]"
    end
  end
end
