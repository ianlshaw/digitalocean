#!/usr/bin/ruby
require 'droplet_kit'

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
client.images.all()
