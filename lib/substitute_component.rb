require "eventide/postgres"

# TODO Load command and event message files"
# require "substitute_component/messages/commands/..."
# require "substitute_component/messages/events/..."

require "substitute_component/substitute"
require "substitute_component/projection"
require "substitute_component/store"

require "substitute_component/handlers/commands"
require "substitute_component/handlers/events"

require "substitute_component/consumers/commands"
require "substitute_component/consumers/events"

require "substitute_component/feature"
require "substitute_component/service"

require "substitute_component/start"
