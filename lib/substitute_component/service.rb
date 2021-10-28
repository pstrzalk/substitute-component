module SubstituteComponent
  class Service
    # include Dependency

    # configure :service

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

      # transform input
      input -= 55.12312

      feature = Feature.new
      feature_result = feature.do_feature_stuff(input)

      feature_result > 0
    end
  end
end
