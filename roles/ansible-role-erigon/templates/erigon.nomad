job "erigon-test-net" {
  datacenters = ["dc1"]
  type        = "service"

  group "erigon" {
    count = 1

    network {
      port "http" {}
      mode = "bridge"
    }

    volume "erigon_group" {
      type      = "host"
      source    = "eth-data"
      read_only = false
    }

    task "ropsten" {
      volume_mount {
        volume      = "erigon_group"
        destination = "/data"
        read_only   = false
      }

      resources {
        cpu    = 2000
        memory = 2000
      }

      driver = "docker"

      config {
        image = "thorax/erigon"
        ports = ["http"]
        args = ["--chain", "ropsten",
          "--http", "--ws",
          "--http.api", "engine,eth,debug,net",
          "--datadir", "/data",
          "--torrent.download.rate", "1mb",
        ]
      }

      service {
        tags = ["ropsten"]

      }

    }
  }
}
