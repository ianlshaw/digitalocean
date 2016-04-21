#!/usr/bin/ruby
require 'droplet_kit'

USAGE='find_droplet <id>'

if ARGV.length != 1
  puts USAGE
  exit(1)
end

id = ARGV[0]
file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
result = client.droplets.find(id: id)
puts result
