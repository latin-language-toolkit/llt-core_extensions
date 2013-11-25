module LLT
  module CoreExtensions
    module MatchData
      def to_hash
        Hash[ names.map(&:to_sym).zip(captures) ]
      end
    end
  end
end

class MatchData
  include LLT::CoreExtensions::MatchData
end
