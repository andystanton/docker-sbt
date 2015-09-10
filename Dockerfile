FROM        ubuntu:14.10
MAINTAINER  andystanton
ENV         SBT_VERSION 0.13.9
RUN         apt-get update
RUN         apt-get install -y wget openjdk-8-jre-headless
RUN         /var/lib/dpkg/info/ca-certificates-java.postinst configure
RUN         wget https://dl.bintray.com/sbt/debian/sbt-${SBT_VERSION}.deb && \
            dpkg -i sbt-${SBT_VERSION}.deb && \
            rm sbt-${SBT_VERSION}.deb && \
            sbt version
