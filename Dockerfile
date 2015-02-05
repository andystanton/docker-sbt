FROM        ubuntu:14.10
MAINTAINER  andystanton
RUN         apt-get update
RUN         apt-get install -y wget git openjdk-8-jre-headless
RUN         /var/lib/dpkg/info/ca-certificates-java.postinst configure
RUN         wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb
RUN         dpkg -i sbt-0.13.7.deb
