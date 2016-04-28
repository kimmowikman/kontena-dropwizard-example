# kontena-dropwizard-example

Example of Java server and MariaDB Galera deployed using kontena.io. 

- All you need to do is to set up Kontena with master and min. 3 nodes with 1Gb memory and run "kontena app deploy".

Java server is using original Dropwizard example from https://github.com/dropwizard/dropwizard/tree/master/dropwizard-example.

## Building Docker image used in example

- Run: build-dropwizard-example-jar.sh
  - Script loads example code from Github and compiles it, adding dependencies for mysql-client. Git and Maven required.
- Run: docker build and push to Docker Hub
- Modify kontena.yml dropwizard-server / image -parameter accordingly.
