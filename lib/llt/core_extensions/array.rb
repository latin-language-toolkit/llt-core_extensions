module LLT
  module CoreExtensions
    module Array
      def select_indices
        indices = []
        each_with_index { |x, i| indices << i if yield(x) }
        indices
      end

      def each_overlapping_pair
        pairs = self[0..-2].zip(self[1..-1])
        if block_given?
          pairs.each { |pair| yield(pair) }
        else
          pairs.to_enum
        end
      end
    end
  end
end

class Array
  include LLT::CoreExtensions::Array
  # Enumerable needs to be included again after it includes
  # a module itself. Strange...
  include Enumerable
end
