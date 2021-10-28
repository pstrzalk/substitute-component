module SubstituteComponent
  class Feature
    module Substitute
      def self.build
        Feature.new
      end

      class Feature < Feature
        attr_accessor :result
        attr_reader :called_with

        def do_feature_stuff(input)
          raise ArgumentError if input.nil?

          @called_with = input

          result
        end
      end
    end
  end
end
