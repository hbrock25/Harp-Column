require 'spec_helper'

describe "groups/new.html.erb" do
  before(:each) do
    assign(:group, stub_model(Group,
      :name => "MyString",
      :guid => "MyString",
      :is_hidden => false
    ).as_new_record)
  end

  it "renders new group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => groups_path, :method => "post" do
      assert_select "input#group_name", :name => "group[name]"
      assert_select "input#group_guid", :name => "group[guid]"
      assert_select "input#group_is_hidden", :name => "group[is_hidden]"
    end
  end
end
