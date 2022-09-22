job "java_test" {
  datacenters = ["dc1"]

  group "java_test" {
    task "java_test" {
      driver = "java"
      artifact {
        source      = "https://github.com/juanluisbaptiste/nomad-demo/raw/master/java/nomad_demo.jar"
        destination = "local/"
        options {
          checksum = "md5:fe6a81a04205394bf6eda8a6153cec0b"
        }
      }
      
      config {
        jar_path    = "local/nomad_demo.jar"
        jvm_options = ["-Xmx128m", "-Xms64m"]
      }
    }
  }
}
