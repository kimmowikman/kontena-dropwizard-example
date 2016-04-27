#/bin/bash
git init dropwizard-example
cd dropwizard-example
git remote add origin https://github.com/dropwizard/dropwizard.git
git config core.sparsecheckout true
echo "dropwizard-example/*" >> .git/info/sparse-checkout
git pull --depth=1 origin master
cd dropwizard-example
mvn package
cd ../..
mkdir target
cp dropwizard-example/dropwizard-example/target/dropwizard-example-*-SNAPSHOT.jar target/dropwizard-example.jar
rm -rf dropwizard-example
