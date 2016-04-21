#!/usr/bin/ruby

# ils

require 'droplet_kit'

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
droplet = DropletKit::Droplet.new(name: 'code-is-awesome.com', region: 'lon1', size: '512mb', image: 'CentOS-6-5-x64')
client.droplets.create(droplet)
