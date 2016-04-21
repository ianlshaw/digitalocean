#!/usr/bin/ruby
require 'droplet_kit'

USAGE='delete_droplet <id>'

if ARGV.length != 1
  puts USAGE
  exit(1)
end

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
id = ARGV[0]
client.droplets.delete(id: id)
