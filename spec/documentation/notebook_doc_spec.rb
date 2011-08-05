require 'spec_helper'

describe NotebookDoc do
  
  it "should have its' visibility set to public by default"
  it "acts as a container for entries"
  it "should not act commentable when configured as private"

  describe "A Practice Journal" do
    it "should be associated with an instrument"
    it "may be associated with 1:M pieces"
  end

  describe "A Notebook (Blog)" do
    it "is somehow different than a Practice Journal... not sure how yet"
  end

end
