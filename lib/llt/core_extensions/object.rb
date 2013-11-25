require 'llt/core_extensions/symbol'

module LLT
  module CoreExtensions
    module Object
      def query(message)
        send(message.to_query)
      end
    end
  end
end

class Object
  include LLT::CoreExtensions::Object
end
