require_relative "feature/substitute"

class SomeApi
  def initialize(input)
    @input = input
  end

  def call
    @input + 100
  end
end

module SubstituteComponent
  class Feature
    # include Dependency

    # configure :feature

    # def configure(...); end

    # def self.build(...)
    #   instance = new
    #   instance.configure(...)

    #   instance
    # end

    def do_feature_stuff(input)
      raise ArgumentError if input.nil?

      puts "I'm doing feature stuff"

      # transforming input because of feature stuff
      input -= 50.1123

      puts "connecting to API... sending input..."
      puts "message received..."

      # returning API response
      SomeApi.new(input).call
    end
  end
end
