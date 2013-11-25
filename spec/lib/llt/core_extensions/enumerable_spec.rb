require 'spec_helper'

describe Enumerable do
  describe "#each_with_index_and_object" do
    it "is a shortcut for each_with_index.each_with_object" do
      %i{ a b }.each_with_index_and_object({}) do |(e, i), h|
        h[e] = i
      end.should == { a: 0, b: 1 }
    end
  end

  describe "#map_with_index" do
    it "is a shortcut for each_with_index.map" do
      [100, 200].map_with_index do |e, i|
        e * i
      end.should == [0, 200]
    end
  end
end
