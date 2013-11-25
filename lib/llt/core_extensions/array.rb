module LLT
  module CoreExtensions
    module Array
      def select_indices
        indices = []
        each_with_index { |x, i| indices << i if yield(x) }
        indices
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
