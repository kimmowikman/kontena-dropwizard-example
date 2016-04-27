FROM williamyeh/java8

ADD target/dropwizard-example.jar .

ADD example-server.yml .

ADD resources/starter.sh .

RUN apt-get update

RUN apt-get install -y mysql-client libmysqlclient-dev

RUN chmod +x starter.sh

CMD ./starter.sh

EXPOSE 8080
