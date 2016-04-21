#!/usr/bin/ruby
require 'droplet_kit'

USAGE='assign_floating_ip <floating_ip> <droplet_id>'

if ARGV.length != 2
  puts USAGE
  exit(1)
end

floaty_ip = ARGV[0]
droplet_id = ARGV[1]

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)

client.floating_ip_actions.assign(ip: floaty_ip, droplet_id: droplet_id)
