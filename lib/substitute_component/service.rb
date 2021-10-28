module SubstituteComponent
  class Service
    # include Dependency

    # dependency :feature, Feature

    # def configure(...); end

    # def self.build(...)
    #   instance = new
    #   instance.configure(...)

    #   instance
    # end

    def do_service_stuff(input)
      puts "I'm doing service stuff"

      # send 50 emails

      feature = Feature.new
      feature_result = feature.do_feature_stuff(input)

      # process result
      feature_result -= 55.12312

      feature_result > 0
    end
  end
end
