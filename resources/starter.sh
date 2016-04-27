echo running starter.sh
mysql -hkontena-dropwizard-example-galera-ha.kontena.local -uroot -psecretpassword --execute "create database example"
java -jar dropwizard-example.jar db migrate example-server.yml
java -jar dropwizard-example.jar server example-server.yml

