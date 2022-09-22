job "command_test" {
  datacenters = ["dc1"]

  group "command_test" {
    task "comand" {
      driver = "raw_exec"

      config {
        # When running a binary that exists on the host, the path must be absolute/
        command = "/bin/sleep"
        args    = ["60"]
      }
    }
  }
}
