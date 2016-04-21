#!/usr/bin/ruby
require 'droplet_kit'

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
droplet = DropletKit::Droplet.new(name: 'example.com', region: 'nyc3', size: '1gb', image: 'ubuntu-14-04-x64')
client.droplets.create(droplet)
