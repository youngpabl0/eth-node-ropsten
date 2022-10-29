datacenter  = "dc1"
data_dir    = "/opt/consul"
client_addr = "0.0.0.0"
server      = true
encrypt     = "eH+1bpRU8pY4Eh/PsHDYr8BojLfLYafwdY/3jYB2A8Y="

bootstrap_expect = 1

ports {
  grpc = 8502
}

connect {
  enabled = true
}
