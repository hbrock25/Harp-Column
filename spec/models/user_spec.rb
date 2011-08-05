require 'spec_helper'

describe User do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should have a name" do
    address = User.make
    address.name.should == "Clark Kendle"
  end
end
