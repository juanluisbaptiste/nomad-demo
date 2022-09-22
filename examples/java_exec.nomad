job "java_test" {
  datacenters = ["dc1"]

  group "java_test" {
    task "java_test" {
      driver = "raw_exec"
      config {
       command = "java"
       args    = ["-Xmx128m", "-Xms64m", "-jar", "/home/juancho/nomad_demo/nomad_demo.jar"]
      }
    }
  }
}
