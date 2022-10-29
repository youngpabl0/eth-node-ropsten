
### Ansible playbook for nomad with consul and eth-node in testnet on Ubuntu 20.04.5 LTS

#### Used software:
- ansible==2.9.27
- consul==1.13.3-1
- nomad==1.4.2
- CNI==1.1.1
- docker>=20.10
- docker-compose==2.12.2
- erigon==latest(2.28.1)

#### How to use:

`git clone https://github.com/youngpabl0/eth-node-ropsten.git && cd eth-node`

`add your hosts to hosts (like in example)`

`ansible-playbook -i hosts eth-nodes.yml`

`make yourself a coffee`

after playbook executing on node will be installed nomad, consul and erigon node with testnet (ropsten) 

erigon persistent data in /data
erigon will be registered in consul but without healthchecks

/data was /dev/sdb1 (diffirent with os drive)

nomad ui: `<node-ip>:4646`

consul ui: `<node-ip>:8500`

Tested on Ubuntu 20.04.5 LTS in VMWare with NAT network setting

P.S Authorization on hosts in example was made by password just for speeding up process, it's just for tests, u can manage your node with ssh-key if u want ;)

Ansible can message below text with fail try cause of password in hosts, u can ssh once on server for add it fingerprint in known_hosts or host_key_checking = False in /etc/ansible/ansible.cfg

>Using a SSH password instead of a key is not possible because Host Key checking is enabled and sshpass does not support this.  
>Please add this host's fingerprint to your known_hosts file to manage this host.