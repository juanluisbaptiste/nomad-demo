job "ping_test" {
  datacenters = ["dc1"]

  group "ping_test" {
    task "ping" {
      driver = "raw_exec"

      config {
        # When running a binary that exists on the host, the path must be absolute/
        command = "/usr/bin/ping"
        args    = ["www.google.com", "-c 1000"]
      }
    }
  }
}
