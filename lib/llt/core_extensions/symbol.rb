module LLT
  module CoreExtensions
    module Symbol
      def to_query
        "#{self}?".to_sym
      end
    end
  end
end

class Symbol
  include LLT::CoreExtensions::Symbol
end
