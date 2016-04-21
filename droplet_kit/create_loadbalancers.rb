#!/usr/bin/ruby
require 'droplet_kit'

USAGE='create_loadbalancers'

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)
lb01 = DropletKit::Droplet.new(name: 'loadbalancer01', region: 'lon1', size: '512mb', image: 'CentOS-6-5-x64')
lb01_result = client.droplets.create(lb01)
lb02 = DropletKit::Droplet.new(name: 'loadbalancer02', region: 'lon1', size: '512mb', image: 'CentOS-6-5-x64')
lb02_result = client.droplets.create(lb02)
puts "loadbalancer01 id: " + lb01_result.id.to_s
puts "loadbalancer02 id: " + lb02_result.id.to_s
