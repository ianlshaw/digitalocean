#!/usr/bin/ruby
require 'droplet_kit'

USAGE='unassing_floating_ip <floating_ip>'

if ARGV.length != 1
  puts USAGE
  exit(1)
end

floaty_ip = ARGV[0]

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)

floating_ip = client.floating_ips.find(ip: floaty_ip)
client.floating_ip_actions.unassign(ip: floating_ip.ip)
