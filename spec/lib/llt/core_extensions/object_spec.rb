require 'spec_helper'

describe Object do
  describe "#query" do
    it "sends a message in query format using Symbol#to_query" do
      x = double
      x.should_receive(:test?)
      x.should_not receive(:test)

      x.query(:test)
    end
  end
end
