javac Main.java
jar -cf nomad_demo.jar Main.class
jar -u -f nomad_demo.jar -m manifest.txt
