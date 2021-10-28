#!/usr/bin/env ruby

require_relative './interactive_init'

puts "Provide a service parameter (type - for nil)"
service_parameter = gets.chomp.then do |str|
  str == "-" ? nil : str.to_i
end

service = Service.new
result = service.do_service_stuff(service_parameter)

pp result
