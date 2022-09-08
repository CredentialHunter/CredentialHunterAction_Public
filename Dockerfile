FROM adoptopenjdk/openjdk14:alpine-jre
MAINTAINER NyssaLLC 

RUN mkdir /workdir
WORKDIR /workdir

COPY docker_files/CredHunter.jar /workdir/CredHunter.jar
COPY docker_files/wrapper.sh /workdir/wrapper.sh
RUN chmod +x wrapper.sh

ENTRYPOINT  ["/workdir/wrapper.sh"]