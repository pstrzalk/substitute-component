# Component initiator user guide: http://docs.eventide-project.org/user-guide/component-host.html#component-initiator

module SubstituteComponent
  module Start
    def self.call
      Consumers::Commands.start("substitute:command")
      Consumers::Events.start("substitute")
    end
  end
end
