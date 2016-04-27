#/bin/bash
git init dropwizard-example
cd dropwizard-example
git remote add origin https://github.com/dropwizard/dropwizard.git
git config core.sparsecheckout true
echo "dropwizard-example/*" >> .git/info/sparse-checkout
git pull --depth=1 origin master
cd dropwizard-example
awk '/<dependencies>/ && ++n == 2{ print; print "<dependency>\n<groupId>org.mariadb.jdbc</groupId>\n<artifactId>mariadb-java-client</artifactId>\n<version>1.4.3</version>\n</dependency>"; next }1' pom.xml > pom.tmp && mv pom.tmp pom.xml
mvn package
cd ../..
mkdir target
cp dropwizard-example/dropwizard-example/target/dropwizard-example-*-SNAPSHOT.jar target/dropwizard-example.jar
rm -rf dropwizard-example
