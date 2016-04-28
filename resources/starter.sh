echo running starter.sh
mysql -h$DWSERVER_DB_HOST -uroot -psecretpassword --execute "create database $DWSERVER_DB_NAME"
java -jar dropwizard-example.jar db migrate example-server.yml
java -jar dropwizard-example.jar server example-server.yml

