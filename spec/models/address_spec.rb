require 'spec_helper'

describe Address do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "should work everytime" do
    address = Address.make
    address.line1.should == "1000 Main AVE"
  end
end
