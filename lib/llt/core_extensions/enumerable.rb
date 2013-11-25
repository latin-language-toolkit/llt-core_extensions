module LLT
  module CoreExtensions
    module Enumerable
      def each_with_index_and_object(arg, &blk)
        each_with_index.each_with_object(arg, &blk)
      end

      def map_with_index(&blk)
        each_with_index.map(&blk)
      end
    end
  end
end

module Enumerable
  include LLT::CoreExtensions::Enumerable
end
