module SubstituteComponent
  module Controls
    module Substitute
      def self.example
        substitute = SubstituteComponent::Substitute.build

        substitute.id = self.id
        substitute.something_happened_time = Time::Effective::Raw.example

        substitute
      end

      def self.id
        ID.example(increment: id_increment)
      end

      def self.id_increment
        1111
      end

      module New
        def self.example
          SubstituteComponent::Substitute.build
        end
      end

      module Identified
        def self.example
          substitute = New.example
          substitute.id = Substitute.id
          substitute
        end
      end
    end
  end
end
