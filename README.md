# digitalocean

Here you will find tools I've written which invoke the DigitalOcean API.

### ClusterMonkey
Provision clusters with single commands, whoopie.

##### Usage: 

|   Command    |       Option        |  Argument #1  |  Argument #2  |
| ------------ |:-------------------:|:-------------:| -------------:|
|cluster-monkey|                     |               |               |
|              | createloadbalancers |               |               |
|              | createfloatingip    |               |               |
|              | assignfloatingip    | `floating_ip` | `nodeid`      |
|              | failover            | `node1id`     | `node2id`     |

##### [![Video Example](https://asciinema.org/a/43641.png)](https://asciinema.org/a/43641)

### Note about keys
At the moment, the best solution I can think of is to keep the api key in a file in the same directory as the repo, but not include it. That way you can simply read from this file for each script, removing the need to commit the key. Its also pretty nice for renewing keys, or using other ones.

### Progress
So far I've fleshed out the droplet_kit directory with a bunch of self contained snippets for basic tasks using the droplet_kit ruby gem.
I also include cluster-monkey, which can be used as a multinode provivisioning script, complete with manual floating ip and failover capability.
