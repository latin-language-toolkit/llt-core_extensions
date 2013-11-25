require 'spec_helper'

describe Symbol do
  describe "#to_query" do
    it "adds a question mark - query method style - to a symbol" do
      :test.to_query.should == :test?
    end
  end
end
