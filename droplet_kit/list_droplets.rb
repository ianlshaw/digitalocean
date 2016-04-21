#!/usr/bin/ruby

require 'droplet_kit'
token='da8aac7272e7c0e4c5ecf76f5da1e0d651c5acfce867b61b3fe6f8d40e7cb131'
client = DropletKit::Client.new(access_token: token)

client.droplets.all()
