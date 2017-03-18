# config/intializers/jquery_query_builder_operators.rb
module JqueryQueryBuilder
  module Operators
    class IsDivisibleBy
      def evaluate(input, value)
        input % value == 0
      end
    end
    
    class EqualsFive
      def evaluate(input, ignored_value)
        input == 5
      end
    end
  end
end