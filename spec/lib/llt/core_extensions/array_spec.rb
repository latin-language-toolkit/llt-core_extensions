require 'spec_helper'

describe Array do
  describe "#select_indices" do
    it "select the indices of array elements for which the block is true" do
      %i{ a b c a b c}.select_indices { |x| x == :a }.should == [0, 3]
    end

    it "has flexible arity" do
      [[1,2]].select_indices { |x,y| x == 1 && y == 2 }.should have(1).item
    end
  end
end
