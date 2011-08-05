require 'spec_helper'

describe Venue do
  before :each do
    @venue = FactoryGirl.create(:venue)
  end

  it "Should fucking work" do
    @venue.should be_valid
  end
end
