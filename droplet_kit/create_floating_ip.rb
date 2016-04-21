#!/usr/bin/ruby
require 'droplet_kit'

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
fip = DropletKit::FloatingIp.new(region: 'lon1') 
result = client.floating_ips.create(fip) 
puts result.ip
