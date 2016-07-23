FROM        jeanblanchard/java:jre-8
MAINTAINER  andystanton
ENV         SBT_VERSION 0.13.12
RUN         apk update && apk add bash openssl && \
            wget https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.tgz && \
            tar zxf sbt-${SBT_VERSION}.tgz && \
            cp -r sbt/* / && \
            rm -rf sbt sbt-${SBT_VERSION}.tgz && \
            sbt version
CMD         sbt
