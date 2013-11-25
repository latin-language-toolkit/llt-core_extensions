require 'spec_helper'

describe MatchData do
  describe "#to_hash" do
    it "returns a hash with key name.to_sym and value capture" do
      m = "alloa_ruby".match(/(?<hello>all).*(?<lang>ruby)/)
      m.to_hash.should == { hello: "all", lang: "ruby" }
    end

    it "returns an empty hash when there are no named captures present" do
      m = "nothing here".match(/nothing/)
      m.to_hash.should == {}

      m = "nothing here".match(/(nothing)/)
      m.to_hash.should == {}
    end
  end

end
