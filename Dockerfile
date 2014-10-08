FROM        ubuntu:14.04
MAINTAINER  andystanton
RUN			apt-get update
RUN			apt-get install -y openjdk-7-jre-headless
RUN			wget https://dl.bintray.com/sbt/debian/sbt-0.13.6.deb
RUN			dpkg -i sbt-0.13.6.deb