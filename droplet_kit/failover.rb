#!/usr/bin/ruby
require 'droplet_kit'

USAGE='failover <floating_ip> <node1id> <node2id>'

if ARGV.length != 3
  puts USAGE
  exit(1)
end

floaty_ip = ARGV[0]
node1id = ARGV[1]
node2id = ARGV[2]

node_ids = []
node_ids.push(node1id)
node_ids.push(node2id)

file = File.open('api.key')
token = file.read
client = DropletKit::Client.new(access_token: token)

# obtain the floaty ip object
floating_ip = client.floating_ips.find(ip: floaty_ip)

# obtain the id of the droplet to which the floaty ip is currently assigned.
current_node_id = floating_ip.droplet.id.to_s

# remove the current node from node_ids array
node_ids.delete(current_node_id)

# load the destination node id from the array
destination_node_id = node_ids[0]

# remove it from current node
client.floating_ip_actions.unassign(ip: floating_ip.ip)

# Wait for the sharks to catch up.
sleep 3

# assign it to node 2
client.floating_ip_actions.assign(ip: floaty_ip, droplet_id: destination_node_id)
