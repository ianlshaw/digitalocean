#!/usr/bin/ruby

# ils 

require 'droplet_kit'

USAGE='enable_private_networking <droplet id>'

if ARGV.length != 1
  puts USAGE
  exit(1)
end

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
id = ARGV[0]
client.droplet_actions.enable_private_networking(droplet_id: id)
